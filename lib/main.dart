import 'package:flutter/material.dart';
import 'package:photoshareapp/CameraButton.dart';
import 'package:photoshareapp/Gallery.dart';
import 'package:photoshareapp/TheTitle.dart';

import 'BlueScreen.dart';
import 'ShareWith.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    var maxSlide = 245;
    return Scaffold(
      body: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            double slide = maxSlide * animationController.value;
            double scale = 1 - animationController.value * 0.3;
            return Stack(
              children: <Widget>[
                BlueScreen(onClose: toggle),
                // TOP PAGE
                Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Stack(
                      children: <Widget>[
                        SingleChildScrollView(
                          physics: ClampingScrollPhysics(),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(32, 60, 32, 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Flex(
                                direction: Axis.vertical,
                                children: <Widget>[
                                  // Expanded(
                                  //     child: Column(children: <Widget>[
                                  // HEADER
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      // PROFILE PICTURE
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(
                                            'https://picsum.photos/200/300'),
                                      ),
                                      // MENU HAMBURGER
                                      GestureDetector(
                                        onTap: toggle,
                                        child: Icon(
                                          Icons.menu,
                                          size: 33,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  // TITLE
                                  TheTitle(),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  ShareWith(),
                                  Container(height: 850, child: Gallery()),
                                  // ]),
                                ]),
                          ),
                        ),
                        CameraButton()
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
