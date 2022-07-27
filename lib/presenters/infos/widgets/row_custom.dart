import 'package:depilacao_sisters/design_system/core/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowCustom extends StatelessWidget {
  const RowCustom({
    Key? key,
    this.onPressed,
    required this.icon,
    required this.title,
    required this.description,
    this.descriptionColorful,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final IconData icon;
  final String title;
  final String description;
  final String? descriptionColorful;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onPressed,
          mouseCursor: onPressed != null ? SystemMouseCursors.click : null,
          hoverColor: Colors.transparent,
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          child: Icon(
            icon,
            size: 50,
            color: const Color(0xffe57988),
          ),
        ),
        UIHelper.horizontalSpaceS20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.nunito(
                  color: const Color(0xff5fa1c2),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                text: description,
                style: GoogleFonts.nunito(
                  color: const Color(0xffa5a2a2),
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: descriptionColorful,
                    style: GoogleFonts.nunito(
                        color: const Color(0xffe57988), fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
