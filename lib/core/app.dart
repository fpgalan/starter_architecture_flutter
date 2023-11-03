import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_architecture_flutter/core/theme/theme.dart';
import 'package:starter_architecture_flutter/shared/services/snack_bar_manager.dart';

import '../routing/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      scaffoldMessengerKey: mScaffoldMessengerKey,
      theme: mLightTheme,
      darkTheme: mDarkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
