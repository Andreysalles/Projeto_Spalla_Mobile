import 'package:flutter/material.dart';

class ApplicationDefaltLabelEmpresa extends StatelessWidget {
  const ApplicationDefaltLabelEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "DBM SISTEMAS LTDA",
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 18,
          fontWeight: FontWeight.w600),
    );
  }
}
