import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({Key key, this.onClose}) : super(key: key);
  final Function() onClose;

  @override
  Widget build(BuildContext context) {
    var list = [
      {'icon': Feather.home, 'name': 'Home'},
      {'icon': Feather.user, 'name': 'Profile'},
      {'icon': Feather.settings, 'name': 'Settings'},
      {'icon': Feather.info, 'name': 'About'},
      {'icon': Feather.credit_card, 'name': 'Web'},
      {'icon': Feather.briefcase, 'name': 'Company'},
      // {'icon': Feather.home, 'name': 'Home'},
    ];
    var l;
    return Container(
      child: GestureDetector(
        onTap: onClose,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
          color: Color(0xff3fd2c7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (l in list)
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Icon(l['icon'], color: Colors.white, size: 18),
                      SizedBox(
                        width: 20,
                      ),
                      Text(l['name'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              // Row(
              //   children: <Widget>[
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Icon(Feather.user, color: Colors.white, size: 18),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text('Profile',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold))
              //   ],
              // ),
              // Row(
              //   children: <Widget>[
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Icon(Feather.settings, color: Colors.white, size: 18),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text('Settings',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold))
              //   ],
              // ),
              // Row(
              //   children: <Widget>[
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Icon(Feather.info, color: Colors.white, size: 18),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text('About',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold))
              //   ],
              // ),
              // Row(
              //   children: <Widget>[
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Icon(Feather.credit_card, color: Colors.white, size: 18),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text('Web',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold))
              //   ],
              // ),
              // Row(
              //   children: <Widget>[
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Icon(Feather.briefcase, color: Colors.white, size: 18),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text('Company',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold))
              //   ],
              // ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Feather.log_out, color: Colors.white, size: 18),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Logout',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
