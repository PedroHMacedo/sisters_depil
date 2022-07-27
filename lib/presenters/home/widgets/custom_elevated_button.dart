import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButon extends StatefulWidget {
  const CustomElevatedButon({Key? key}) : super(key: key);

  @override
  State<CustomElevatedButon> createState() => _CustomElevatedButonState();
}

class _CustomElevatedButonState extends State<CustomElevatedButon> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onHover: (value) {
        setState(() {
          onHover = !onHover;
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          onHover ? const Color(0xffcb6c79) : const Color(0xffa0becc),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(320, 50),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Confira nossa tabela de preços'.toUpperCase(),
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
