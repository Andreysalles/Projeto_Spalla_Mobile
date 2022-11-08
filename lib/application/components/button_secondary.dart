import 'package:flutter/material.dart';
import 'package:spallamobile/application/components/application_default_button.dart';

class SecondaryButton extends StatelessWidget {
  final String? buttonLabel;
  final Color? borderSideColor;
  final void Function()? onPressed;

  const SecondaryButton({
    super.key,
    required this.buttonLabel,
    required this.borderSideColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ApplicationDefaultButton(
      onPressed: onPressed,
      buttonLabel: buttonLabel,
      borderSide: BorderSide(
        color: borderSideColor ?? Colors.blue,
        width: 1.7,
      ),
    );
  }
}
