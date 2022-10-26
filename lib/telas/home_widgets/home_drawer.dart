// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Drawer getHomeDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        UserAccountsDrawerHeader(
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
          accountName: Text("Guilherme Debone"),
          accountEmail: Text(
            "gdebone@gmail.com",
          ),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/Guilherme.png',
            ),
          ),
        ),
        ListTile(
            leading: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 81, 168, 255),
            ),
            title: Text("Configurações"),
            textColor: Color.fromARGB(255, 126, 126, 126)),
        ListTile(
            leading: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 81, 168, 255),
            ),
            title: Text("Sair"),
            textColor: Color.fromARGB(255, 126, 126, 126))
      ],
    ),
  );
}
