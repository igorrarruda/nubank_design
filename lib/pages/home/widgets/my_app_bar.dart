import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({Key key, @required this.showMenu, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/nubank_logo.png',
                      height: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Teste',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                Icon(showMenu ? Icons.expand_less : Icons.expand_more)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
