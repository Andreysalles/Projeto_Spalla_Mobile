import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:spallamobile/application/components/application_default_background.dart';
import 'package:spallamobile/application/components/application_default_button.dart';
import 'package:spallamobile/src/financeiro_widget/financeiro_view.dart';
import 'package:spallamobile/src/home_widgets/components/my_card_widget.dart';

class HomeContent extends StatelessWidget {
  final String labelEmpresa;

  const HomeContent({
    super.key,
    this.labelEmpresa = "DBM SISTEMAS LTDA",
  });

  @override
  Widget build(BuildContext context) {
    String labelEmpresa = "DBM SISTEMAS LTDA";
    return DraggableHome(
      title: Text(labelEmpresa),

      headerWidget: headerHome(labelEmpresa),

      //Conteudo do Body
      body: [cardsBodyHome()],
      backgroundColor: const Color.fromARGB(255, 236, 241, 243),
    );
  }
}

headerHome(labelEmpresa) {
  return ApplicationDefaultBackGround(
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
                  button: ApplicationDefaultButton(
                    buttonLabel: 'CONSULTAR',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FinanceiroScreen(),
                        ),
                      );
                    },
                  ),
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
                  button: const ApplicationDefaultButton(
                      buttonLabel: 'MINHAS VENDAS'),
                  iconcard: Image.asset("assets/spalla-vendas-01-48x48.png",
                      height: 40),
                  labelcard: "Vendas",
                  textcard1: 'Vendas realizadas e meta a alcançar',
                  textcard2: 'Novas oportunidades e clientes de carteira'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: MyCardHome(
                button: const ApplicationDefaultButton(
                    buttonLabel: 'VER ATIVIDADES'),
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
