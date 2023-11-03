import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/core/constants/sizes.dart';

class MButton extends StatelessWidget {
  const MButton({
    super.key,
    required this.label,
    this.icon,
    this.onTap,
  });

  final String label;
  final IconData? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        if (icon != null) ...[Icon(icon), gapW8],
        Text(label)
      ]),
    );
  }
}
