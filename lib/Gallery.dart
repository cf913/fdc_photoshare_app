import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gridView = new GridView.builder(
        itemCount: 12,
        physics: new NeverScrollableScrollPhysics(),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25.0,
          mainAxisSpacing: 25.0,
          childAspectRatio: 3 / 2.25,
        ),
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            child: new Container(
                alignment: Alignment.center,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null),
            onTap: () {},
          );
        });

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Recent Photos',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Expanded(child: gridView)
        ],
      ),
    );
  }
}
