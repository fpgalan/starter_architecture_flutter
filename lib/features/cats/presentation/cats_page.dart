import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/shared/extensions/extensions.dart';

import '../../../shared/widgets/layout/m_page.dart';

class CatsPage extends StatelessWidget {
  const CatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MPage(
      appBar: MAppBar(title: 'Gatos'.hardcoded),
      body: Center(
        child: Text('Cats'.hardcoded),
      ),
    );
  }
}
