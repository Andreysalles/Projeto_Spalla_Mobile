import 'package:flutter/material.dart';
import 'package:spallamobile/src/home_widgets/components/my_button_widget.dart';

class HomeCardServicos extends StatefulWidget {
  const HomeCardServicos({super.key});

  @override
  State<HomeCardServicos> createState() => _HomeCardServicosState();
}

class _HomeCardServicosState extends State<HomeCardServicos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 360,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 211, 211, 211),
            offset: Offset(0.0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
        ],
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
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Image.asset("assets/spalla-servico-01-48x48.png", height: 40),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 32,
                  ),
                  child: Text(
                    "Serviço",
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
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Consulte sua agenda de atividades",
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
                  labelbutton: 'VER ATIVIDADES',
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
