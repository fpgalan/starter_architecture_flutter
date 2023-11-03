import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/shared/extensions/extensions.dart';

class MSelector<T> extends StatefulWidget {
  const MSelector({
    super.key,
    this.label,
    this.initialSelection,
    this.items = const [],
    this.onSelected,
    this.outlined = true,
    this.isExpanded = false,
    this.isOptional = false,
  });
  final String? label;
  final T? initialSelection;
  final List<MSelectorItem<T>> items;
  final void Function(T?)? onSelected;
  final bool outlined;
  final bool isExpanded;
  final bool isOptional;

  @override
  State<MSelector<T>> createState() => _MSelectorState<T>();
}

class _MSelectorState<T> extends State<MSelector<T>> {
  late T? currentValue;
  String? errorText;

  @override
  void initState() {
    super.initState();
    currentValue = widget.initialSelection;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isExpanded) {
      return LayoutBuilder(builder: (c, bc) {
        return _buildDropDownMenu(width: bc.maxWidth);
      });
    }
    return _buildDropDownMenu();
  }

  Widget _buildDropDownMenu({double? width}) {
    final entries =
        widget.items.map((i) => DropdownMenuEntry(value: i.value, label: i.label)).toList();
    return FormField<T>(
      validator: widget.isOptional ? null : _validator,
      builder: (FormFieldState<dynamic> field) {
        return DropdownMenu<T>(
          width: width,
          inputDecorationTheme: InputDecorationTheme(
            alignLabelWithHint: false,
            filled: true,
            // filled: !outlined,
            border: widget.outlined ? const OutlineInputBorder() : null,
            isCollapsed: false,
          ),
          errorText: errorText,
          label: widget.label == null ? null : Text(widget.label!),
          enableSearch: false,
          enableFilter: false,
          requestFocusOnTap: false,
          dropdownMenuEntries: entries,
          initialSelection: widget.initialSelection,
          onSelected: _onSelected,
        );
      },
    );
  }

  String? _validator(_) {
    setState(() => errorText = (currentValue == null) ? 'Selecciona una opció'.hardcoded : null);
    return errorText;
  }

  void _onSelected(T? newValue) {
    currentValue = newValue;
    widget.onSelected?.call(newValue);
  }
}

class MSelectorItem<T> {
  MSelectorItem({required this.value, required this.label});

  final T value;
  final String label;
}
