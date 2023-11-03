import 'package:flutter/cupertino.dart';
import 'package:starter_architecture_flutter/core/constants/sizes.dart';

class MPadding extends StatelessWidget {
  const MPadding({super.key, required this.child, this.padding});
  final Widget child;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16) + (padding ?? EdgeInsets.zero),
      child: child,
    );
  }
}
