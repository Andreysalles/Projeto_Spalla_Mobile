import 'package:flutter/material.dart';
import 'package:spallamobile/application/components/application_default_Logo_Empresa.dart';
import 'package:spallamobile/application/components/application_default_label_Empresa.dart';

class RowLogoLabelEmpresa extends StatelessWidget {
  const RowLogoLabelEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        AplicationDefaultLogoEmpresa(),
        Padding(
          padding: EdgeInsets.only(left: 28),
          child: ApplicationDefaltLabelEmpresa(),
        ),
      ],
    );
  }
}
