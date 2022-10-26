// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";
import 'package:spallamobile/telas/home_widgets/home_content.dart';

import 'home_widgets/home_appbar.dart';
import 'home_widgets/home_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: getHomeDrawer(),
      appBar: getHomeAppBar(),
      body: HomePageContent(),
    );
  }
}
