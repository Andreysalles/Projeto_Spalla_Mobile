import "package:flutter/material.dart";

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final Icon? icon;
  final String? title;
  final void Function()? onPressed;
  final Widget? actions;

  const MyAppBar({
    super.key,
    this.icon = const Icon(Icons.menu),
    this.title,
    this.onPressed,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 72),
          child: Text(
            title ?? '',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: icon ?? const Icon(Icons.menu),
              onPressed: onPressed ??
                  () {
                    Scaffold.of(context).openDrawer();
                  },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          actions ??
              const Padding(
                padding: EdgeInsets.only(right: 16),
              )
        ]);
  }
}
