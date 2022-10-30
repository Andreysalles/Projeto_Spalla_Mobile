// ignore_for_file: prefer_const_constructors

import 'package:spallamobile/src/home_widgets/home_card_financeiro.dart';

import "package:flutter/material.dart";
import 'package:spallamobile/src/home_widgets/home_card_servicos.dart';
import 'package:spallamobile/src/home_widgets/home_card_vendas.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: const [
            Color.fromARGB(255, 0, 28, 56),
            Color.fromARGB(255, 97, 176, 255),
          ],
        ),
      ),
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 32,
            ),

            //Header

            child: CircleAvatar(
              radius: 72,
              backgroundColor: Color.fromARGB(255, 85, 90, 95),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Logo-DBM.jpeg"),
                radius: 68,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 40,
              left: 15,
            ),
            child: Text(
              "DBM SISTEMAS LTDA",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 94, 158, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: 1,
            ),
            duration: Duration(milliseconds: 700),
            builder: (context, value, child) {
              return AnimatedOpacity(
                opacity: value,
                duration: Duration(milliseconds: 700),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: HomeCardFinanceiro(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: HomeCardVendas(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: HomeCardServicos(),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
