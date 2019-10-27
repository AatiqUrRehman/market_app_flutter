import 'package:flutter/material.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// print
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 6, right: 12),
                height: 120,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Image.asset(
                          assetsLink + 'logo.png',
                          height: 100,
                          width: 100,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: Text(
                            'REGISTRATE',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'INICIAR SESION',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConstants.orange),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConstants.orange),
                          ),
                          hintText: 'Correo Electronico',
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConstants.orange),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConstants.orange),
                          ),
                          hintText: 'Contraseña',
                          hintStyle:
                              TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    socialButton('INICIAR SESION', ColorConstants.orange, () {
                      print('sasasasa');
                    }),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Text('O Iniciar Sesion con'),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          socialButton('FACEBOOK', ColorConstants.blue, () {
                            print('sasasasa');
                          }),
                          socialButton('GOOGLE', ColorConstants.orange, () {
                            print('sasasasa');
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ) /* add child content here */,
      ),
    );
  }

  Container socialButton(
      String label, Color backgroundColor, dynamic onPressed) {
    return Container(
      width: 140,
      child: RaisedButton(
        shape: StadiumBorder(),
        color: backgroundColor,
        onPressed: onPressed,
        child: Text(
          '$label',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
