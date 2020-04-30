import 'package:flutter/material.dart';

class ShareWith extends StatelessWidget {
  const ShareWith({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 21;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Share with:',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 80,
            child: Stack(
              children: <Widget>[
                for (var i = 0; i < 6; i++)
                  Positioned(
                    top: 0,
                    // left: 0,
                    left: radius * i * 1.7,
                    child: CircleAvatar(
                      radius: radius + 1.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: radius,
                        backgroundImage:
                            NetworkImage('https://picsum.photos/200/300'),
                      ),
                    ),
                  ),
                Positioned(
                  top: 0,
                  // left: 0,
                  left: radius * 6 * 1.7,
                  child: CircleAvatar(
                    radius: radius + 1.5,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: radius,
                      backgroundColor: Color(0xffDAF9F7),
                      child: Center(
                        child: Text(
                          '+5',
                          style: TextStyle(
                              color: Color(0xff4FD6CC),
                              fontWeight: FontWeight.w900,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
