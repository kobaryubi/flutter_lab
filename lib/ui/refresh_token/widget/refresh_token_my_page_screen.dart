import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/refresh_token/view_model/refresh_token_my_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen showing the signed-in user's profile fetched with the access
/// token.
///
/// When the API rejects the token as expired, the refresh flow re-issues
/// the access token cookie through a WebView and the fetch is retried
/// once.
class RefreshTokenMyPageScreen extends StatelessWidget {
  const RefreshTokenMyPageScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('My Page')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(refreshTokenMyPageViewModelProvider);
    final viewModel = ref.read(refreshTokenMyPageViewModelProvider.notifier);

    /// Fetches the profile; when the access token has expired, refreshes
    /// the session, reopens the login WebView, and retries the fetch once.
    Future<void> fetchUserProfileWithRefresh() async {
      final userProfile = await viewModel.fetchUserProfile();

      if (userProfile case AsyncError(error: Unauthenticated())) {
        final refreshLoginUrl = await viewModel.refreshToken();

        if (refreshLoginUrl case AsyncData(:final value) when context.mounted) {
          final isSaved = await RefreshTokenLoginWebViewRoute(
            loginUrl: value.toString(),
          ).push<bool>(context);

          if ((isSaved ?? false) && context.mounted) {
            await viewModel.fetchUserProfile();
          }
        }
      }
    }

    useEffect(() {
      // Mutating a provider synchronously during build throws; defer the
      // initial fetch to a microtask.
      Future.microtask(fetchUserProfileWithRefresh);

      return null;
    }, const []);

    return Column(
      spacing: 8,
      children: [
        if (uiState.userProfile case AsyncLoading()) const Text('Loading...'),
        if (uiState.userProfile case AsyncData(:final value))
          Text('id: ${value.id}, name: ${value.name}'),
        if (uiState.userProfile case AsyncError(:final error))
          Text('Error: $error'),

        if (uiState.refreshLoginUrl case AsyncLoading())
          const Text('Refreshing session...'),
        if (uiState.refreshLoginUrl case AsyncError(:final error))
          Text('Refresh error: $error'),
      ],
    );
  }
}
