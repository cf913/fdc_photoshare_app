import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        bottom: 0,
        left: 0,
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () => {},
              tooltip: 'Take a picture',
              child: Icon(Icons.camera_alt),
              backgroundColor: Color(0xff3fd2c7),
            ),
          ],
        ),
      ),
    );
  }
}
