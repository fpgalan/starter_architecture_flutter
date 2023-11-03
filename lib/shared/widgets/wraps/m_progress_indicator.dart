import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/core/constants/sizes.dart';
import 'package:starter_architecture_flutter/shared/extensions/context_extensions.dart';

class MProgressIndicator extends StatelessWidget {
  const MProgressIndicator({super.key, this.size = Sizes.p16});
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size, width: size, child: CircularProgressIndicator(color: context.cs.onSurface));
  }
}
