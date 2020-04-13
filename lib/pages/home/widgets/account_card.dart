import 'package:flutter/material.dart';

class AccountCard extends StatefulWidget {
  @override
  _AccountCardState createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard>
    with AutomaticKeepAliveClientMixin {
  bool _showBalance;

  @override
  void initState() {
    super.initState();
    _showBalance = false;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.grey[500],
                                size: 30,
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Conta",
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 16),
                              ),
                            ],
                          ),
                          GestureDetector(
                            child: Icon(
                              _showBalance
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey[500],
                              size: 30,
                            ),
                            onTap: () {
                              setState(() {
                                _showBalance = !_showBalance;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Saldo disponível",
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          _showBalance
                              ? Text(
                                  "R\$ 480,43",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 42),
                                )
                              : Container(
                                  height: 42,
                                  width: MediaQuery.of(context).size.width * .7,
                                  color: Colors.grey[200],
                                ),
                        ],
                      ),
                    )
                  ],
                ),
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
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.monetization_on,
                      color: Colors.grey[700],
                      size: 30,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Text(
                      "Transferência de R\$ 500,00 peita para Antonio Padilha de oliveira andrade quarta",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      softWrap: true,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey[700],
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
