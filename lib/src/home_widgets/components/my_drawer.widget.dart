// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String? username;
  final String? email;
  final AssetImage? imageproffile;

  const MyDrawer(
      {super.key,
      this.imageproffile = const AssetImage('assets/user_anonimo.png'),
      this.email = 'default@gmail.com',
      this.username = "User"});

  @override
  Widget build(BuildContext context) {
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
                colors: const [
                  Color.fromARGB(255, 0, 28, 56),
                  Color.fromARGB(255, 97, 176, 255),
                ],
              ),
            ),
            accountName: Text(
              username ?? "Andrey Salles",
            ),
            accountEmail: Text(
              email ?? "andreyspereira@hotmail.com",
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: imageproffile ??
                  AssetImage(
                    'assets/andreyfoto.jpeg',
                  ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 81, 168, 255),
            ),
            title: Text("Configurações"),
            textColor: Color.fromARGB(255, 126, 126, 126),
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Color.fromARGB(255, 81, 168, 255),
            ),
            title: Text("Sair"),
            textColor: Color.fromARGB(255, 126, 126, 126),)
        ],
      ),
    );
  }
}
