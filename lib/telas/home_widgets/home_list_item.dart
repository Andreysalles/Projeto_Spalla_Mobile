import 'package:flutter/material.dart';

import 'home_list_model.dart';

class HomeListItem extends StatefulWidget {
  final HomeListModel homeListModel;
  const HomeListItem({super.key, required this.homeListModel});

  @override
  State<HomeListItem> createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 10,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [Image.asset(widget.homeListModel.assetIcon)],
            ),
          ),
        ],
      ),
    );
  }
}
