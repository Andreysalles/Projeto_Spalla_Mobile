import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? labelbutton;
  final TextStyle style;

  const MyButton({
    super.key,
    this.labelbutton = 'Default',
    this.style = const TextStyle(
      fontSize: 12,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          // ignore: prefer_const_constructors
          side: BorderSide(
            color: Colors.blue,
            width: 1.7,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: () {},
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
