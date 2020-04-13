import 'package:flutter/material.dart';

class CredCardCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.credit_card,
                                color: Colors.grey[700],
                                size: 30,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Cartão de crédito",
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "FATURA ATUAL",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text.rich(
                                TextSpan(
                                  text: 'R\$ ',
                                  children: [
                                    TextSpan(
                                      text: '320',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: ',23',
                                    ),
                                  ],
                                ),
                                style: TextStyle(
                                  fontSize: 42,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text.rich(
                                TextSpan(
                                  text: 'Limite disponível ',
                                  children: [
                                    TextSpan(
                                      text: 'R\$ 640,45',
                                      style: TextStyle(
                                        color: Colors.lightGreen,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      width: 7,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(color: Colors.orange),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.blue),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(color: Colors.lightGreen),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                  Flexible(
                    child: Text(
                      "Compra mais recente em\nCarrefour Fortaleza Fo no val...",
                      style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey[700],
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
