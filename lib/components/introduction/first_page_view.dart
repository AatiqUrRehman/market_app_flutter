import 'package:flutter/material.dart';

Container introPageComponent(context, size) {
  return Container(
    width: size.width,
    height: size.height,
    child: Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/advertisement.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Positioned(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.25),
              child: Text(
                'Vamos al super por ti',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Positioned(
          child: Center(
            child: Container(
                margin: EdgeInsets.only(top: size.height * 0.42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    marketLogo('assets/images/lacolonia.png'),
                    marketLogo('assets/images/pricesmart.png'),
                    marketLogo('assets/images/losandes.png'),
                  ],
                )),
          ),
        ),
        Positioned(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.55),
              child: Text('y muchos mas...',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        Positioned(
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

ClipRRect marketLogo(String img) {
  return ClipRRect(
    borderRadius: new BorderRadius.circular(8.0),
    child: Image.asset(
      '$img',
      height: 150.0,
      width: 100.0,
    ),
  );
}
