import 'package:flutter/material.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            assetsLink + 'signup.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 0,
                    color: Colors
                        .transparent), //color is transparent so that it does not blend with the actual color specified
                borderRadius:
                    const BorderRadius.all(const Radius.circular(30.0)),
                color: Colors.grey.withOpacity(0.2)),
          ),
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 6, left: 12, right: 12),
                height: 100,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        assetsLink + 'logo.png',
                        height: 100,
                        width: 100,
                        alignment: Alignment.topLeft,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: Text(
                            'INICIA SESION',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6, left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'REGISTRATE',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 40,
                      height: 2,
                      margin: EdgeInsets.only(top: 4, left: 2),
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6, left: 12, right: 12),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: size.width * 0.44,
                          child:
                              buildTextFormField('Nombre', firstnameController),
                        ),
                        Container(
                          width: size.width * 0.44,
                          child: buildTextFormField(
                              'Apellido', lastnameController),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      width: size.width,
                      child: buildTextFormField(
                          'Correo Electronico', emailController),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      width: size.width,
                      child:
                          buildTextFormField('Telefono', phoneNumberController),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      width: size.width,
                      child:
                          buildTextFormField('Contraseña', passwordController),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      width: size.width,
                      child: buildTextFormField(
                          'Confirmar Contraseña', passwordController),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: socialButton(
                          'Crear Registro', ColorConstants.orange, () {
                        Navigator.pushNamed(context, '/phone_verfication');
                      }),
                    ),
                    SizedBox(
                      height: size.height * 0.080,
                    ),
                    Container(
                      child: Text(
                        'O Conectar con',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          socialButton('FACEBOOK', ColorConstants.blue, () {
                            print('sasasasa');
                          }),
                          socialButton('GOOGLE', ColorConstants.orange, () {
                            print('sasasasa');
                          }),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
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

  TextFormField buildTextFormField(
    String hintLabel,
    TextEditingController controller,
  ) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        fontSize: 18,
      ),
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.orange),
          ),
          hintText: '$hintLabel',
          hintStyle: TextStyle(fontSize: 18, color: Colors.black)),
    );
  }
}
