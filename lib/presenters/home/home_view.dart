import 'package:depilacao_sisters/presenters/home/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        child: Container(
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
              const CustomAppBar(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bem-vinda',
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 80,
                      ),
                    ),
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
                ),
              ),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
