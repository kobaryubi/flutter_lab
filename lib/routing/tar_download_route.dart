part of 'router.dart';

@TypedGoRoute<TarDownloadRoute>(
  path: Routes.tarDownload,
  name: 'tar_download',
)
@immutable
class TarDownloadRoute extends GoRouteData with $TarDownloadRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TarDownloadScreen();
}
