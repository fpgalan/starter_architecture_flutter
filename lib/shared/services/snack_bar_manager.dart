import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/core/constants/sizes.dart';
import 'package:starter_architecture_flutter/shared/extensions/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snack_bar_manager.g.dart';

final mScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

@Riverpod(keepAlive: true)
SnackBarManager snackBarManager(SnackBarManagerRef ref) {
  return SnackBarManager();
}

class SnackBarManager {
  void show(MSnackBar mSnackBar) {
    mScaffoldMessengerKey.currentState?.showSnackBar(mSnackBar.toSnackBar);
  }
}

class MSnackBar {
  MSnackBar({this.title, required this.text, this.type = MSnackBarType.warning});

  MSnackBar.error({this.title, required this.text, this.type = MSnackBarType.error});
  MSnackBar.warning({this.title, required this.text, this.type = MSnackBarType.warning});
  MSnackBar.info({this.title, required this.text, this.type = MSnackBarType.info});
  MSnackBar.success({this.title, required this.text, this.type = MSnackBarType.success});

  final String? title;
  final String text;
  final MSnackBarType type;

  SnackBar get toSnackBar {
    final tt = mScaffoldMessengerKey.currentContext?.tt;
    final (backgroundColor, textColor, icon) = _getColors();
    return SnackBar(
        backgroundColor: backgroundColor,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              Text(title!, style: tt?.labelLarge?.copyWith(color: textColor)),
              gapH8
            ],
            Row(
              children: [
                Icon(icon, color: textColor, size: Sizes.p20),
                gapW16,
                Text(text, style: tt?.bodyMedium?.copyWith(color: textColor)),
              ],
            )
          ],
        ));
  }

  (Color? backgroundColor, Color? textColor, IconData icon) _getColors() {
    // final cs = mScaffoldMessengerKey.currentContext?.cs;
    // if (cs == null) return (null, null);
    switch (type) {
      case MSnackBarType.error:
        return (Colors.red[200], Colors.red[900], Icons.error_outline);
      case MSnackBarType.warning:
        return (Colors.yellow[200], Colors.yellow[900], Icons.warning_amber_outlined);
      case MSnackBarType.info:
        return (Colors.blue[200], Colors.blue[900], Icons.info_outline);
      case MSnackBarType.success:
        return (Colors.green[200], Colors.green[900], Icons.check_circle_outline);
    }
  }
}

enum MSnackBarType { error, warning, info, success }
