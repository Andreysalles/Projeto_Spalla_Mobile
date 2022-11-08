import 'package:flutter/material.dart';

class ApplicationDefaultButton extends StatelessWidget {
  final String? buttonLabel;
  final TextStyle textStyle;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final void Function()? onPressed;

  const ApplicationDefaultButton({
    super.key,
    this.backgroundColor,
    this.buttonLabel = 'Default',
    this.textStyle = const TextStyle(
      fontSize: 12,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
    this.borderSide,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.transparent,
        shape: RoundedRectangleBorder(
          // ignore: prefer_const_constructors
          side: borderSide ??
              const BorderSide(
                color: Colors.blue,
                width: 1.7,
              ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          buttonLabel ?? 'Default',
          style: textStyle,
        ),
      ),
    );
  }
}
