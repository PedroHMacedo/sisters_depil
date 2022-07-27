import 'package:depilacao_sisters/design_system/core/ui_helper.dart';
import 'package:depilacao_sisters/presenters/infos/widgets/row_custom.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class InfosView extends StatelessWidget {
  const InfosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              color: Color(0xfffec0c8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Container(
              height: 450,
              width: 400,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/images/recepcao_sisters.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RowCustom(
                icon: FeatherIcons.clock,
                title: 'Horários'.toUpperCase(),
                description: 'Nosso horário é de segunda a sábado das',
                descriptionColorful: ' 9:00 às 19:00',
              ),
              UIHelper.verticalSpaceS64,
              RowCustom(
                icon: const IconData(0xf03b8, fontFamily: 'MaterialIcons'),
                title: 'Whatsapp'.toUpperCase(),
                description: 'Temos agendamento via WhatsApp:',
                descriptionColorful: ' 97640-1127',
              ),
              UIHelper.verticalSpaceS64,
              RowCustom(
                icon: FeatherIcons.phoneCall,
                title: 'Telefone'.toUpperCase(),
                description: 'Agende já seu horário:',
                descriptionColorful: ' 5535-3899',
              ),
              UIHelper.verticalSpaceS64,
              RowCustom(
                icon: FeatherIcons.instagram,
                title: 'Instagram'.toUpperCase(),
                description: 'Clique no ícone ao lado para acessar',
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
