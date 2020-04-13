import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subText;

  const ItemMenu({Key key, this.icon, this.text, this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .7, color: Colors.white54),
          top: BorderSide(width: .7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple[800],
        splashColor: Colors.purple[900],
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  icon,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Icon(Icons.chevron_right),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
