import 'package:flutter/material.dart';

class MyCardHome extends StatelessWidget {
  final String? textcard1;
  final String? textcard2;
  final String? labelcard;
  final String? labelbutton;
  final Image? iconcard;
  final TextStyle stylebutton;
  const MyCardHome({
    super.key,
    this.textcard1 = 'text default',
    this.textcard2 = '',
    this.labelcard = 'Default',
    this.iconcard,
    this.labelbutton = 'Default',
    this.stylebutton = const TextStyle(
      fontSize: 12,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 195,
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
              // ignore: prefer_const_literals_to_create_immutables
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
              // ignore: prefer_const_literals_to_create_immutables
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
                child: TextButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      // ignore: prefer_const_constructors
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.7,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      labelbutton ?? 'Default',
                      style: stylebutton,
                    ),
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
