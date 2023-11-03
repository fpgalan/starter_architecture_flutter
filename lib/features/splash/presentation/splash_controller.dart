import 'package:starter_architecture_flutter/routing/router.dart';
import 'package:starter_architecture_flutter/routing/routes.dart';
import 'package:starter_architecture_flutter/shared/services/preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_controller.g.dart';

@riverpod
class SplashController extends _$SplashController {
  @override
  void build() {
    _init();
  }

  Future<void> _init() async {
    await Future.wait([
      // Init Preferences
      ref.watch(preferencesProvider).init(),
      // Fake charge duration
      Future.delayed(const Duration(milliseconds: 250))
    ]);
    ref.read(routerProvider).go(DogsRoute.path);
  }
}
