import 'package:flutter/material.dart';

class ApplicationDefaultContainer extends StatelessWidget {
  final Widget? child;
  final dynamic padding;
  final double? height;
  final double? width;

  const ApplicationDefaultContainer({
    super.key,
    this.child,
    this.padding,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      height: height ?? 195,
      width: width ?? 360,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 189, 189, 189),
            offset: Offset(0.0, 0.0),
            blurRadius: 4,
            spreadRadius: 0.0,
          ),
        ],
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: child,
    );
  }
}
