import 'package:flutter/material.dart';

class BetuptipTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double width;
  final double height;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final TextStyle? textStyle; // Ensure textStyle is applied here
  final Widget? prefixIcon;
  final EdgeInsetsGeometry contentPadding;
  final Widget? suffixIcon;
  final Widget? prefix;

  const BetuptipTextField(
      {super.key,
      this.controller,
      this.hintText,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.onChanged,
      this.padding,
      this.margin,
      this.width = double.infinity,
      this.height = 50.0,
      this.borderRadius = const BorderRadius.all(Radius.circular(8)),
      this.contentPadding = const EdgeInsets.symmetric(horizontal: 16.0),
      this.borderColor = Colors.grey,
      this.borderWidth = 2.0,
      this.fillColor,
      this.hintStyle,
      this.textStyle,
      this.prefixIcon,
      this.suffixIcon,
      this.prefix});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      padding: padding,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onChanged,
        style: textStyle, // Ensure this is not null and correctly applied
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          fillColor: fillColor,
          filled: fillColor != null,
          prefixIcon: prefixIcon,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
        ),
      ),
    );
  }
}
