import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/item_menu_bottom.dart';

class MenuBottom extends StatefulWidget {
  final bool showMenu;

  const MenuBottom({Key key, this.showMenu}) : super(key: key);

  @override
  _MenuBottomState createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();

    _tween = Tween(begin: 180, end: 0);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: Duration(milliseconds: 1500),
        curve: Curves.elasticOut,
        builder: (context, value, child) {
          return Positioned(
            bottom: 10 + MediaQuery.of(context).padding.bottom,
            left: value,
            right: value * -1,
            height: MediaQuery.of(context).size.height * .17,
            child: IgnorePointer(
              ignoring: widget.showMenu,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: widget.showMenu ? 0 : 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ItemMenuBottom(
                        icon: Icons.person_add,
                        text: "Indicar amigos",
                      ),
                      ItemMenuBottom(
                        icon: Icons.phone_android,
                        text: "Recarga de celular",
                      ),
                      ItemMenuBottom(
                        icon: Icons.chat_bubble_outline,
                        text: "Cobrar",
                      ),
                      ItemMenuBottom(
                        icon: Icons.monetization_on,
                        text: "Depositar",
                      ),
                      ItemMenuBottom(
                        icon: Icons.mail_outline,
                        text: "Transferir",
                      ),
                      ItemMenuBottom(
                        icon: Icons.ac_unit,
                        text: "Ajustar limite",
                      ),
                      ItemMenuBottom(
                        icon: Icons.help_outline,
                        text: "Me ajuda",
                      ),
                      ItemMenuBottom(
                        icon: Icons.border_clear,
                        text: "Pagar",
                      ),
                      ItemMenuBottom(
                        icon: Icons.lock_open,
                        text: "Bloquear cartão",
                      ),
                      ItemMenuBottom(
                        icon: Icons.credit_card,
                        text: "Cartão virtual",
                      ),
                      ItemMenuBottom(
                        icon: Icons.phonelink_setup,
                        text: "Organizar atalhos",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
