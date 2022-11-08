import 'package:flutter/material.dart';

class AplicationDefaultLogoEmpresa extends StatelessWidget {
  final double? radius;
  const AplicationDefaultLogoEmpresa({
    super.key,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage("assets/Logo-DBM.jpeg"),
      radius: 32,
    );
  }
}
