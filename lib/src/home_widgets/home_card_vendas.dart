// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:spallamobile/src/home_widgets/components/my_button_widget.dart';

class HomeCardVendas extends StatefulWidget {
  const HomeCardVendas({super.key});

  @override
  State<HomeCardVendas> createState() => _HomeCardVendasState();
}

class _HomeCardVendasState extends State<HomeCardVendas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
                Image.asset("assets/spalla-vendas-01-48x48.png", height: 40),
                Padding(
                  padding: EdgeInsets.only(
                    left: 32,
                  ),
                  child: Text(
                    "Vendas",
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
                  "Vendas realizadas e meta a alcançar.",
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
                  "Novas oportunidades e clientes de carteira.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 137, 153, 165),
                    fontSize: 16,
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
                  label: 'MINHAS VENDAS',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
