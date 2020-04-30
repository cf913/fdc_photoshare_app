import 'package:flutter/material.dart';

class TheTitle extends StatelessWidget {
  const TheTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            'Hello, ',
            style: TextStyle(
                color: Color(0xffCBCBCB),
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'BojanZ!',
            style: TextStyle(
                color: Color(0xff222222),
                fontSize: 25,
                fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
