import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_architecture_flutter/features/splash/presentation/splash_controller.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    ref.watch(splashControllerProvider);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [cs.primary, cs.secondary],
        )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
              flex: 8,
              child: FittedBox(
                  child: Text('Dogs&Cats',
                      style: tt.displayLarge
                          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w800))),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
