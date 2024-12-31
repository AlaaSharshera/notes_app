import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon(
      {required this.icon, required this.onpressed, super.key});
  final Icon icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.07),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: onpressed,
        icon: icon,
        iconSize: 30,
      ),
    );
  }
}
