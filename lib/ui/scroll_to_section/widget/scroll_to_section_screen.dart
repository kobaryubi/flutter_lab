import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates scrolling to specific sections
/// using GlobalKey and Scrollable.ensureVisible.
class ScrollToSectionScreen extends StatelessWidget {
  const ScrollToSectionScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Scroll to Section')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  static final _sectionTitles = [
    'Section 1 - Introduction',
    'Section 2 - Features',
    'Section 3 - Usage',
    'Section 4 - Examples',
    'Section 5 - Summary',
  ];

  static final List<GlobalKey> _sectionKeys = List.generate(
    _sectionTitles.length,
    (_) => GlobalKey(),
  );

  /// Scrolls to the section at the given index using its GlobalKey.
  void _handleScrollToSection({required int index}) {
    final keyContext = _sectionKeys[index].currentContext;

    if (keyContext == null) {
      return;
    }

    Scrollable.ensureVisible(
      keyContext,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) => Column(
    children: [
      _NavigationBar(
        sectionTitles: _sectionTitles,
        onSectionTap: _handleScrollToSection,
      ),

      Expanded(
        child: ListView.builder(
          itemCount: _sectionTitles.length,
          itemBuilder: (context, index) => _SectionCard(
            key: _sectionKeys[index],
            title: _sectionTitles[index],
            index: index,
          ),
        ),
      ),
    ],
  );
}

/// Horizontal navigation bar with buttons for each section.
class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    required this.sectionTitles,
    required this.onSectionTap,
  });

  final List<String> sectionTitles;
  final void Function({required int index}) onSectionTap;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 48,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: sectionTitles.length,
      separatorBuilder: (_, _) => const SizedBox(width: 8),
      itemBuilder: (context, index) {
        /// Handles tap on a navigation button.
        void handleTap() {
          onSectionTap(index: index);
        }

        return GestureDetector(
          onTap: handleTap,
          child: Container(
            alignment: .center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Section ${index + 1}',
              style: TextStyles.bodyMedium.copyWith(color: AppColors.white1),
            ),
          ),
        );
      },
    ),
  );
}

/// A section card that represents a content block.
class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.index,
    super.key,
  });

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) => Container(
    height: 300,
    margin: const EdgeInsets.all(16),
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.gray1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          title,
          style: TextStyles.titleMedium.copyWith(color: AppColors.black1),
        ),

        const SizedBox(height: 16),

        Text(
          'This is the content of section ${index + 1}. '
          'Tap the navigation buttons above to scroll here.',
          style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
        ),
      ],
    ),
  );
}
