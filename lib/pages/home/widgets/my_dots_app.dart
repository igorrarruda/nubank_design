import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;
  final double top;
  final bool showMenu;

  const MyDotsApp({Key key, this.currentIndex, this.top, this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 0 : 1,
        child: Row(
          children: [0, 1, 2]
              .map(
                (i) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 7,
                  width: 7,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i == currentIndex ? Colors.white : Colors.white38,
                  ),
                ),
              )
              .toList(),

          // SizedBox(width: 8),
          // Container(
          //   height: 7,
          //   width: 7,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.white,
          //   ),
          // ),
          // SizedBox(width: 8),
          // Container(
          //   height: 7,
          //   width: 7,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.white,
          //   ),
          // ),
        ),
      ),
    );
  }
}
