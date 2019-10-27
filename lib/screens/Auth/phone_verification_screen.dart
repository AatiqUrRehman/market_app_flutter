import 'package:flutter/material.dart';
import 'package:nui_user/components/butons/app_buttons.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class PhoneVerificationScreen extends StatefulWidget {
  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  List boxes = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.15,
          ),
          Container(
            alignment: Alignment.center,
            child: Card(
              child: Container(
                width: size.width * 0.94,
                height: size.height * 0.36,
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Verificacion',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Digite el PIN de 6 Digitos enviado a su correo electronico para continuar',
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: loopBoxes(size),
                    ),
                    appRaisedButton('Continuar', Colors.green, () {
                      Navigator.pushNamed(context, '/create_budget');
                    }, size.width, context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> loopBoxes(Size size) {
    return <Widget>[
      for (var item in boxes) buildInputBox(size),
    ];
  }

  Container buildInputBox(Size size) {
    return Container(
      width: size.width * 0.12,
      height: 40,
      child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: size.width * 0.035, top: 2.5)),
          style: TextStyle(
            fontSize: 28,
          )),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    );
  }
}
