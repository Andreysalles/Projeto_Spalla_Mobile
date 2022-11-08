import 'package:flutter/material.dart';
import 'package:spallamobile/application/components/application_default_button.dart';
import 'package:spallamobile/application/components/application_default_card.dart';

class MyCardHome extends StatelessWidget {
  final String? textcard1;
  final String? textcard2;
  final String? labelcard;
  final Widget? button;
  final Image? iconcard;
  final TextStyle stylebutton;
  const MyCardHome({
    super.key,
    this.textcard1 = 'text default',
    this.textcard2 = '',
    this.labelcard,
    this.iconcard,
    this.stylebutton = const TextStyle(
      fontSize: 12,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
    this.button = const ApplicationDefaultButton(),
  });

  @override
  Widget build(BuildContext context) {
    return ApplicationDefaultContainer(
      child: Column(
        children: [
          //Linhas da coluna

          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                iconcard ??
                    Image.asset("assets/spalla-financeiro-01-48x48.png",
                        height: 40),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 32,
                  ),
                  child: Text(
                    labelcard ?? "Default",
                    style: const TextStyle(
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
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              children: [
                Text(
                  textcard1 ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 137, 153, 165),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Text(
                  textcard2 ?? "Text Default",
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 137, 153, 165),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              SizedBox(
                height: 50,
                child: button,
              )
            ],
          ),
        ],
      ),
    );
  }
}
