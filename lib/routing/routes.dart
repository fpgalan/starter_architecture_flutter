import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:starter_architecture_flutter/routing/scaffold_with_nav.dart';

import '../features/cats/presentation/cats_page.dart';
import '../features/dogs/presentation/dogs_page.dart';
import '../features/splash/presentation/splash_page.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(path: SplashRoute.path)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  static const path = '/splash';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}

@TypedStatefulShellRoute<HomeRoute>(
  branches: [
    TypedStatefulShellBranch<StatefulShellBranchData>(
      routes: [
        TypedGoRoute<DogsRoute>(path: DogsRoute.path, routes: [
          // TypedGoRoute<DogCreationRoute>(path: DogsCreationRoute.path),
          // TypedGoRoute<DogDetailsRoute>(path: DogDetailsRoute.path),
        ])
      ],
    ),
    TypedStatefulShellBranch<StatefulShellBranchData>(
      routes: [TypedGoRoute<CatsRoute>(path: CatsRoute.path)],
    ),
  ],
)
class HomeRoute extends StatefulShellRouteData {
  const HomeRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  // static const String $restorationScopeId = 'restorationScopeId';

  static Widget $navigatorContainerBuilder(
      BuildContext context, StatefulNavigationShell navigationShell, List<Widget> children) {
    return ScaffoldWithNav(navigationShell: navigationShell, children: children);
  }
}

// DOGS
class DogsRoute extends GoRouteData {
  const DogsRoute();
  static const path = '/dogs';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DogsPage();
  }
}

// CATS
class CatsRoute extends GoRouteData {
  const CatsRoute();
  static const path = '/cats';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CatsPage();
  }
}
