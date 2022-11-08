import 'package:flutter/material.dart';
import 'package:spallamobile/application/components/application_default_background.dart';
import 'package:spallamobile/application/components/application_default_card.dart';
import 'package:spallamobile/application/components/row_logo_label_empresa.dart';
import 'package:spallamobile/src/financeiro_widget/components/chart_content_financeiro/financeiro_sf_chart.dart';

class FinanceiroContent extends StatefulWidget {
  const FinanceiroContent({super.key});

  @override
  State<FinanceiroContent> createState() => _FinanceiroContentState();
}

class _FinanceiroContentState extends State<FinanceiroContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ApplicationDefaultBackGround(
            height: 700,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 86),
                  child: RowLogoLabelEmpresa(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Row(
                    children: const [
                      Text(
                        'Saldo disponivel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Row(
                    children: const [
                      Text(
                        'RS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          '10.879,23',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Resultado dos últimos Meses',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ChartFinanceiro(),
                ),
              ],
            ),
          ),
          Container(
            height: 800,
            color: const Color.fromARGB(255, 236, 241, 243),
            child: Column(
              children: [
                ApplicationDefaultContainer(
                  child: Column(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
