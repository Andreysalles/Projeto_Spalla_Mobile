import 'package:flutter/material.dart';
import 'package:spallamobile/application/components/button_primary.dart';

class ButtonPrimarySucess extends StatelessWidget {
  final String? buttonLabel;
  final void Function()? onPressed;

  const ButtonPrimarySucess({
    super.key,
    required this.buttonLabel,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonPrimary(
      onPressed: onPressed,
      buttonLabel: buttonLabel,
      backgroundColor: const Color.fromARGB(255, 45, 139, 48),
    );
  }
}
