import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starter_architecture_flutter/shared/extensions/string_extensions.dart';

class ScaffoldWithNav extends StatelessWidget {
  ScaffoldWithNav({
    required this.navigationShell,
    required this.children,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNestedNav'));

  final StatefulNavigationShell navigationShell;

  final List<Widget> children;

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final body = PageView(
      controller: pageController,
      children: children,
    );
    if (size.width < 450) {
      return ScaffoldWithNavBar(
        currentIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
        body: body,
      );
    } else {
      return ScaffoldWithNavRail(
        currentIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
        body: body,
      );
    }
  }

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.linear);
  }
}

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final int currentIndex;

  final Widget body;

  final Function(int) onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        destinations: <NavigationDestination>[
          NavigationDestination(
            icon: const Icon(Icons.pets_outlined),
            selectedIcon: const Icon(Icons.pets),
            label: 'Perros'.hardcoded,
          ),
          NavigationDestination(
            icon: const Icon(Icons.cruelty_free_outlined),
            selectedIcon: const Icon(Icons.cruelty_free),
            label: 'Gatos'.hardcoded,
          ),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}

class ScaffoldWithNavRail extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavRail({
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavRail'));

  final Widget body;

  final int currentIndex;

  final Function(int) onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: currentIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: <NavigationRailDestination>[
              NavigationRailDestination(
                icon: const Icon(Icons.pets_outlined),
                selectedIcon: const Icon(Icons.pets),
                label: Text('Perros'.hardcoded),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.cruelty_free_outlined),
                selectedIcon: const Icon(Icons.cruelty_free),
                label: Text('Gatos'.hardcoded),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(child: body),
        ],
      ),
    );
  }
}
