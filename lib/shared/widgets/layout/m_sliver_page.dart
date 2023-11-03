import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:starter_architecture_flutter/shared/widgets/buttons/m_f_a_button.dart';

class MSliverPage extends StatefulWidget {
  const MSliverPage(
      {super.key,
      this.appBar,
      this.child,
      this.slivers = const [],
      this.scrollController,
      this.fAButton,
      this.safeArea});

  final MSliverAppBar? appBar;
  final List<Widget> slivers;
  final Widget? child;
  final ScrollController? scrollController;
  final MFAButton? fAButton;
  final bool? safeArea;

  @override
  State<MSliverPage> createState() => _MSliverPageState();
}

class _MSliverPageState extends State<MSliverPage> {
  late ScrollController _scrollController;
  bool isFABExtended = true;

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();

    // Agrega un listener para el scroll
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      // Scroll hacia arriba
      setState(() {
        isFABExtended = false;
      });
    } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      // Scroll hacia abajo
      setState(() {
        isFABExtended = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSafeArea = widget.safeArea ?? true;
    return Scaffold(
        body: SafeArea(
          top: isSafeArea,
          bottom: isSafeArea,
          left: isSafeArea,
          right: isSafeArea,
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              if (widget.appBar != null) widget.appBar!,
              ...widget.slivers,
            ],
          ),
        ),
        floatingActionButton: widget.fAButton?.copyWith(isExtended: isFABExtended));
  }
}

class MSliverAppBar extends StatelessWidget {
  const MSliverAppBar({super.key, required this.title, this.actions});
  final String? title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: title == null ? null : Text(title!),
      actions: actions,
    );
  }
}
