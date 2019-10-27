import 'package:flutter/material.dart';
import 'package:nui_user/components/introduction/first_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        PageView(
          children: <Widget>[
            introPageComponent(context, size),
            introPageComponent(context, size),
            introPageComponent(context, size),
            introPageComponent(context, size),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: size.height * 0.09),
              child: DotsIndicator(
                dotsCount: 4,
                position: 0,
                decorator: DotsDecorator(
                  size: const Size.square(14.0),
                  color: Colors.black87,
                  activeColor: Colors.redAccent,
                ),
              ),
            ))
      ],
    ));
  }
}
