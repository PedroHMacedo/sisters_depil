import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const ItemMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.pink.withOpacity(1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
