import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/core/constants/sizes.dart';

class MTag extends StatelessWidget {
  const MTag({super.key, required this.label, this.color});
  final String label;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p8, vertical: Sizes.p4),
      decoration: BoxDecoration(
          color: color?.withAlpha(255 ~/ 8),
          border: Border.all(color: color ?? Colors.black),
          borderRadius: BorderRadius.circular(Sizes.p8)),
      child: Text(label, style: tt.labelSmall?.copyWith(color: color)),
    );
  }
}
