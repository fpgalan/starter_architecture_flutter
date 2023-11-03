import 'package:flutter/material.dart';

class MFAButton extends StatelessWidget {
  const MFAButton({
    super.key,
    this.icon = Icons.add,
    this.label,
    this.onTap,
    this.isExtended = true,
  });

  final IconData icon;
  final String? label;
  final void Function()? onTap;
  final bool isExtended;

  MFAButton copyWith({bool? isExtended}) {
    return MFAButton(
      icon: icon,
      label: label,
      onTap: onTap,
      isExtended: isExtended ?? this.isExtended,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: AnimatedSize(
        alignment: Alignment.centerLeft,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
        child: Row(
          children: [
            Icon(icon),
            if (isExtended)
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(label ?? ''),
              )
          ],
        ),
      ),
      onPressed: onTap,
    );
  }
}
