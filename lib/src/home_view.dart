import "package:flutter/material.dart";

import 'package:spallamobile/src/home_widgets/home_content.dart';
import '../application/components/my_appbar_widget.dart';
import 'home_widgets/components/my_drawer.widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: MyAppBar(),
      body: HomeContent(),
    );
  }
}
