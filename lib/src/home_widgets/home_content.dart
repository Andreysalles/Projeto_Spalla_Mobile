import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:spallamobile/src/home_widgets/components/my_card_widget.dart';
import 'package:spallamobile/src/home_widgets/components/my_button_widget.dart';

class DragableHomeContent extends StatelessWidget {
  const DragableHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    String labelEmpresa = "DBM SISTEMAS LTDA";
    return DraggableHome(
      title: Text(labelEmpresa),

      headerWidget: headerHome(labelEmpresa),

      //Conteudo do Body
      body: [cardsBodyHome()],
      fullyStretchable: false,
      backgroundColor: const Color.fromARGB(255, 236, 241, 243),
    );
  }
}

headerHome(labelEmpresa) {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 0, 28, 56),
          Color.fromARGB(255, 97, 176, 255),
        ],
      ),
    ),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 100,
          ),

          //Header

          child: CircleAvatar(
            radius: 72,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/Logo-DBM.jpeg"),
              radius: 68,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Text(
            "$labelEmpresa",
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}

cardsBodyHome() {
  return TweenAnimationBuilder(
    tween: Tween<double>(
      begin: 0,
      end: 1,
    ),
    duration: const Duration(milliseconds: 850),
    builder: (context, value, child) {
      return AnimatedOpacity(
        opacity: value,
        duration: const Duration(milliseconds: 900),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
                top: 10,
              ),
              child: MyCardHome(
                  button: const MyButton(labelbutton: 'CONSULTAR'),
                  iconcard: Image.asset(
                    'assets/spalla-financeiro-01-48x48.png',
                    height: 40,
                  ),
                  labelcard: "Financeiro",
                  textcard1: "Consulte os Saldos de sua empresa.",
                  textcard2:
                      'Veja a projeção financeira para os próximos dias.'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: MyCardHome(
                  button: const MyButton(labelbutton: 'MINHAS VENDAS'),
                  iconcard: Image.asset("assets/spalla-vendas-01-48x48.png",
                      height: 40),
                  labelcard: "Vendas",
                  textcard1: 'Vendas realizadas e meta a alcançar',
                  textcard2: 'Novas oportunidades e clientes de carteira'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: MyCardHome(
                button: const MyButton(labelbutton: 'VER ATIVIDADES'),
                iconcard: Image.asset('assets/spalla-servico-01-48x48.png',
                    height: 40),
                labelcard: 'Serviço',
                textcard1: 'Consulte sua agenda de atividades',
              ),
            ),
          ],
        ),
      );
    },
  );
}
