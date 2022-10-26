import "package:flutter/material.dart";

AppBar getHomeAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
  );
}
