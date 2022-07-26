import 'package:depilacao_sisters/presenters/home/widgets/item_menu.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            Image.asset(
              'assets/images/logo_header.png',
              height: 50,
              alignment: Alignment.topCenter,
            ),
            const Spacer(),
            ItemMenu(
              title: 'Home',
              press: () {},
            ),
            ItemMenu(
              title: "Quem Somos",
              press: () {},
            ),
            ItemMenu(
              title: "Serviços",
              press: () {},
            ),
            ItemMenu(
              title: "Preços",
              press: () {},
            ),
            ItemMenu(
              title: "Contatos",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
