import 'package:flutter/material.dart';

class RewardsCard extends StatefulWidget {
  @override
  _RewardsCardState createState() => _RewardsCardState();
}

class _RewardsCardState extends State<RewardsCard> {
  bool _onPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.card_giftcard,
                color: Colors.grey[700],
                size: 30,
              ),
              SizedBox(height: 25),
              Text(
                'Nubank Rewards',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviçosque você realmente usa.',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: .7,
                color: Colors.purple[800],
              ),
            ),
            child: RaisedButton(
              onHighlightChanged: (details) {
                setState(() {
                  _onPressed = details;
                });
              },
              child: Text(
                'ATIVE O SEU REWARDS',
                style: TextStyle(
                  fontSize: 14,
                  // color: Colors.purple[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              highlightColor: Colors.purple[800],
              disabledTextColor: Colors.white,
              textColor: _onPressed ? Colors.white : Colors.purple[800],
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
