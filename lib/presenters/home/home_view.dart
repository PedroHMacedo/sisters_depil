import 'package:depilacao_sisters/design_system/core/ui_helper.dart';
import 'package:depilacao_sisters/presenters/home/widgets/custom_elevated_button.dart';
import 'package:depilacao_sisters/presenters/home/widgets/item_menu.dart';
import 'package:depilacao_sisters/presenters/infos/infos_view.dart';
import 'package:depilacao_sisters/presenters/quem_somos/quem_somos_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/site_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWellcome(size),
                        UIHelper.verticalSpaceS32,
                        const CustomElevatedButon()
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            const InfosView(),
            const QuemSomosView(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      title: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Container(
          height: 70,
          width: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/logo_header.png'),
            ),
          ),
        ),
      ),
      actions: [
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
        UIHelper.horizontalSpaceS24
      ],
    );
  }

  Widget textWellcome(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bem-vinda',
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 80,
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'ao ',
            style: GoogleFonts.nunito(
              color: const Color(0xffa5a2a2),
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: 'site',
                style: GoogleFonts.nunito(
                    color: const Color(0xffcb6c79), fontSize: 30),
              ),
              TextSpan(
                text: ' da Sisters',
                style: GoogleFonts.nunito(
                  color: const Color(0xffa5a2a2),
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        UIHelper.verticalSpaceS32,
        SizedBox(
          width: size.width * 0.5,
          child: const Text(
            'Somos especialistas em serviços de depilação, manicure e pedicure para mulheres. Realizamos também procedimentos de estética facial como Nanoblanding, extensão de cílios e designs personalizados de sobrancelhas.',
            style: TextStyle(
              fontSize: 21,
              color: Color(0xffcb6c79),
            ),
          ),
        ),
      ],
    );
  }
}
