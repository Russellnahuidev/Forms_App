import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? errorMesage;
  final bool obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    this.label,
    this.hintText,
    this.errorMesage,
    this.onChanged,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      //borderSide: BorderSide(color: colors.primary, width: 2),
    );
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary, width: 2.5),
        ),
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800, width: 2.5),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800, width: 2.5),
        ),
        isDense: true,
        label: label != null ? Text(label!) : null,
        hintText: hintText,
        errorText: errorMesage,
        focusColor: colors.primary,
      ),
    );
  }
}
