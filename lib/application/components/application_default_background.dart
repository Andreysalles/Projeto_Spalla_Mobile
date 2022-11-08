import 'package:flutter/material.dart';

class ApplicationDefaultBackGround extends StatelessWidget {
  final Widget? child;
  final double? height;
  final dynamic padding;

  const ApplicationDefaultBackGround({
    super.key,
    this.child,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      height: height ?? MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 0, 28, 56),
            Color.fromARGB(255, 97, 176, 255),
          ],
        ),
      ),
      child: child,
    );
  }
}
