import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenuBottom({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * .22,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(icon),
            Text(
              text,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
