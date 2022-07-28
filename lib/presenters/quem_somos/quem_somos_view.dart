import 'package:depilacao_sisters/design_system/core/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuemSomosView extends StatelessWidget {
  const QuemSomosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffF18C9B),
                Color(0xffCD7985),
                Color(0xffA86670),
                Color(0xff905861),
                Color(0xff744A50),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quem Somos',
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 62,
                ),
              ),
              UIHelper.verticalSpaceS32,
              Padding(
                padding: const EdgeInsets.only(left: 300, right: 300),
                child: Text(
                  'Estamos há vários anos no mercado atendendo ao público feminino e possuímos profissionais treinadas e qualificadas na execução de nossos serviços de depilação, manicure e estética facial.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    color: const Color(0xffe0dddc),
                    fontSize: 18,
                  ),
                ),
              ),
              UIHelper.verticalSpaceS16,
              Padding(
                padding: const EdgeInsets.only(left: 300, right: 300),
                child: Text(
                  'Não somos apenas um salão de beleza, acreditamos nos relacionamentos e conexões familiares, o nosso propósito é proporcionar experiências positivas, em um lugar acolhedor, com foco na biossegurança à um preço justo.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    color: const Color(0xffe0dddc),
                    fontSize: 18,
                  ),
                ),
              ),
              UIHelper.verticalSpaceS16,
              Padding(
                padding: const EdgeInsets.only(left: 230, right: 230),
                child: Text(
                  'Nossa filosofia é sempre inovar buscando segurança para nossas clientes. Trabalhamos de acordo com as normas da vigilância sanitária CMVS Nº. 355030801-960-000283-2-0.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    color: const Color(0xffe0dddc),
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
