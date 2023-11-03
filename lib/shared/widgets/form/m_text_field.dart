import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starter_architecture_flutter/shared/extensions/string_extensions.dart';

class MTextField extends StatelessWidget {
  const MTextField({
    super.key,
    this.label,
    this.suffixText,
    this.initialValue,
    this.outlined = true,
    this.maxLength,
    this.type,
    this.validators,
    this.inputFormatters,
    this.onChanged,
  });

  final String? label;
  final String? suffixText;
  final String? initialValue;
  final bool outlined;
  final int? maxLength;
  final TextInputType? type;
  final List<TextValidator>? validators;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: InputDecoration(
        label: label == null ? null : Text(label!),
        suffixText: suffixText,
        filled: true,
        // filled: !outlined,
        border: outlined ? const OutlineInputBorder() : null,
      ),
      maxLength: maxLength,
      keyboardType: type,
      inputFormatters: inputFormatters,
      validator: validators == null
          ? null
          : (String? text) {
              String? error;
              for (var validator in validators!) {
                error = validator.validate(text ?? '');
                if (error != null) break;
              }
              return error;
            },
      onChanged: _onChanged,
    );
  }

  void _onChanged(String? text) {
    final trimText = text?.trim();
    onChanged?.call(trimText);
  }
}

enum TextValidator {
  empty,
  isEmail,
  isNumber;

  String? validate(String text) {
    switch (this) {
      case TextValidator.empty:
        if (text.isEmpty) {
          return 'El camp está buit'.hardcoded;
        }
      case TextValidator.isEmail:
        if (text.isEmpty) break;
        if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,})$').hasMatch(text)) {
          return 'El text no es un email'.hardcoded;
        }
      case TextValidator.isNumber:
        if (text.isEmpty) break;
        if (int.tryParse(text) == null) {
          return 'El camp no es un nombre vàlid'.hardcoded;
        }
    }
    return null;
  }
}
