import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/item_menu_bottom.dart';
import 'package:nubank/pages/home/widgets/menu_app.dart';
import 'package:nubank/pages/home/widgets/menu_bottom.dart';
import 'package:nubank/pages/home/widgets/my_app_bar.dart';
import 'package:nubank/pages/home/widgets/my_dots_app.dart';
import 'package:nubank/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _contextHeight = MediaQuery.of(context).size.height;
    double _positionTopLimit = _contextHeight * .24;
    double _positionBottomLimit = _contextHeight * .8;
    double _middlePosition = (_positionBottomLimit - _positionTopLimit) / 2;
    if (_yPosition == null) _yPosition = _positionTopLimit;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                _yPosition =
                    _showMenu ? _positionBottomLimit : _positionTopLimit;
              });
            },
          ),
          MenuApp(
            top: _positionTopLimit - 30,
            showMenu: _showMenu,
          ),
          MyDotsApp(
            showMenu: _showMenu,
            top: _contextHeight * .7,
            currentIndex: _currentIndex,
          ),
          PageViewApp(
            top: _yPosition,
            showMenu: _showMenu,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              setState(() {
                _yPosition += details.delta.dy;
                _yPosition = _yPosition <= _positionTopLimit
                    ? _positionTopLimit
                    : _yPosition;
                _yPosition = _yPosition > _positionBottomLimit
                    ? _positionBottomLimit
                    : _yPosition;
                if (_yPosition != _positionBottomLimit &&
                    details.delta.dy > 0) {
                  _yPosition =
                      _yPosition > _positionTopLimit + _middlePosition - 50
                          ? _positionBottomLimit
                          : _yPosition;
                }
                if (_yPosition != _positionTopLimit && details.delta.dy < 0) {
                  _yPosition =
                      _yPosition < _positionBottomLimit - _middlePosition
                          ? _positionTopLimit
                          : _yPosition;
                }
                if (_yPosition == _positionBottomLimit) {
                  _showMenu = true;
                } else if (_yPosition == _positionTopLimit) {
                  _showMenu = false;
                }
              });
            },
          ),
          MenuBottom(
            showMenu: _showMenu,
          ),
        ],
      ),
    );
  }
}
