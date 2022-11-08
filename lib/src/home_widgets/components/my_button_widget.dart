import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? labelbutton;
  final TextStyle style;
  final void Function()? onPressed;

  const MyButton({
    super.key,
    this.labelbutton = 'Default',
    this.style = const TextStyle(
      fontSize: 12,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
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
          labelbutton ?? 'Default',
          style: style,
        ),
      ),
    );
  }
}
