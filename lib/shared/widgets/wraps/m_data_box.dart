import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/core/constants/sizes.dart';
import 'package:starter_architecture_flutter/shared/extensions/extensions.dart';

class MDataBox extends StatelessWidget {
  const MDataBox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
      decoration: BoxDecoration(
        color: context.cs.secondaryContainer,
        borderRadius: BorderRadius.circular(Sizes.p12),
      ),
      child: child,
    );
  }
}
