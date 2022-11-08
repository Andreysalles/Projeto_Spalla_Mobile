import 'package:flutter/material.dart';
import 'package:spallamobile/application/components/application_default_button.dart';

class ButtonPrimary extends StatelessWidget {
  final String? buttonLabel;
  final Color? backgroundColor;
  final void Function()? onPressed;

  const ButtonPrimary({
    super.key,
    required this.buttonLabel,
    required this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ApplicationDefaultButton(
      onPressed: onPressed,
      buttonLabel: buttonLabel,
      backgroundColor: backgroundColor,
    );
  }
}
