// ignore_for_file: prefer_const_constructors
import 'package:spallamobile/telas/home_widgets/home_list_item.dart';

import "home_list_model.dart";
import "package:flutter/material.dart";

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  List<HomeListModel> listMockedList = [
    HomeListModel(title: "Home - Spalla", assetIcon: "assets/Guilherme.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 72,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 0, 28, 56),
            Color.fromARGB(255, 97, 176, 255),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            Text(
              "DBM SISTEMAS LTDA",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 94, 158, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
    // ignore: dead_code
  }
}
