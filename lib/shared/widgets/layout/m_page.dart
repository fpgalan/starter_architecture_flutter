import 'package:flutter/material.dart';

class MPage extends StatelessWidget {
  const MPage({super.key, this.appBar, this.body});
  final MAppBar? appBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(appBar),
      body: body,
    );
  }

  AppBar? _buildAppBar(MAppBar? m) {
    if (m == null) return null;
    return AppBar(
      title: m.title == null ? null : Text(m.title!),
      actions: m.actions,
    );
  }
}

class MAppBar {
  const MAppBar({required this.title, this.actions});
  final String? title;
  final List<Widget>? actions;
}
