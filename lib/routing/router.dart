import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:starter_architecture_flutter/routing/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: $appRoutes,
    initialLocation: SplashRoute.path,
    // debugLogDiagnostics: true,
    // refreshListenable: notifier,
    // redirect: notifier.redirect,
  );
}
