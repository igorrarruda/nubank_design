import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * .6,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
                  height: 120,
                  color: Colors.white,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Banco ',
                    children: [
                      TextSpan(
                        text: '260 - Nu Pagamentos S.A.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Agência ',
                    children: [
                      TextSpan(
                        text: '0001',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Conta ',
                    children: [
                      TextSpan(
                        text: '2536798-0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 25),
                ItemMenu(
                  icon: Icons.help_outline,
                  text: 'Me ajuda',
                ),
                ItemMenu(
                  icon: Icons.person,
                  text: 'Me ajuda',
                  subText: 'Nome de preferência, telefone, e-mail',
                ),
                ItemMenu(
                  icon: Icons.monetization_on,
                  text: 'Configurar conta',
                ),
                ItemMenu(
                  icon: Icons.credit_card,
                  text: 'Configurar Cartão',
                ),
                ItemMenu(
                  icon: Icons.business,
                  text: 'Pedir conta PJ',
                ),
                ItemMenu(
                  icon: Icons.phone_android,
                  text: 'Configurações do app',
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54, width: .7),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: RaisedButton(
                    color: Colors.purple[800],
                    splashColor: Colors.purple[900],
                    elevation: 0,
                    disabledElevation: 0,
                    focusElevation: 0,
                    highlightElevation: 0,
                    hoverElevation: 0,
                    child:
                        Text("SAIR DA CONTA", style: TextStyle(fontSize: 16)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
