// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spallamobile/src/home_widgets/components/my_button_widget.dart';

class HomeCardFinanceiro extends StatefulWidget {
  const HomeCardFinanceiro({super.key});

  @override
  State<HomeCardFinanceiro> createState() => _HomeCardFinanceiroState();
}

class _HomeCardFinanceiroState extends State<HomeCardFinanceiro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 195,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          //Linhas da coluna

          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Image.asset("assets/spalla-financeiro-01-48x48.png",
                    height: 40),
                Padding(
                  padding: EdgeInsets.only(
                    left: 32,
                  ),
                  child: Text(
                    "Financeiro",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 131, 139, 148),
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Consulte os Saldos de sua empresa.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 137, 153, 165),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Veja a projeção financeira para os próximos dias.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 137, 153, 165),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: const [
              SizedBox(
                height: 50,
                child: MyButton(
                  label: 'CONSULTAR',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
