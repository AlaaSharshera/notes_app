import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {required this.title,
      required this.icon,
      required this.onpressed,
      super.key});
  final String title;
  final Icon icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30),
        ),
        const Spacer(),
        CustomSearchIcon(
          icon: icon,
          onpressed: onpressed,
        )
      ],
    );
  }
}
