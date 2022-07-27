import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemMenu extends StatefulWidget {
  final String title;
  final VoidCallback press;
  const ItemMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  State<ItemMenu> createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onHover: (value) {
          setState(() {
            onHover = !onHover;
          });
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {},
        child: Text(
          widget.title.toUpperCase(),
          style: GoogleFonts.nunito(
            color: onHover ? const Color(0xffcb6c79) : const Color(0xffa55863),
            fontSize: 16,
            decoration: onHover ? TextDecoration.underline : null,
          ),
        ),
      ),
    );
  }
}
