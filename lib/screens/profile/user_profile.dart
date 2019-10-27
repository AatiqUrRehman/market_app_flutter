import 'package:flutter/material.dart';
import 'package:nui_user/components/text/build_text.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: size.width,
            color: ColorConstants.lightGreen,
            height: size.height * 0.16,
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    assetsLink + 'logo.jpg',
                    width: 80,
                    height: 80,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 12),
                  alignment: Alignment.bottomLeft,
                  child: buildText(
                      'Mi Cuenta',
                      TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ),
          Container(
            color: ColorConstants.greyGreen,
            width: size.width,
            height: size.height * 0.86,
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(16),
                      height: size.height * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/edit_user_profile');
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: size.width * 0.14,
                                ),
                                buildText(
                                    'Editar Perfil',
                                    TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on,
                                  color: Colors.white, size: 30),
                              SizedBox(
                                width: size.width * 0.14,
                              ),
                              buildText(
                                  'Direccion de Entrega',
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              Container()
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.white, size: 30),
                              SizedBox(
                                width: size.width * 0.14,
                              ),
                              buildText(
                                  'Mis Listas Favoritas',
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.history,
                                  color: Colors.white, size: 30),
                              SizedBox(
                                width: size.width * 0.14,
                              ),
                              buildText(
                                  'Historial de Ordenes',
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/');
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.lock, color: Colors.white, size: 30),
                                SizedBox(
                                  width: size.width * 0.14,
                                ),
                                buildText(
                                    'Cerrar session',
                                    TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                                Container()
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    color: ColorConstants.deepGreen,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 16),
                      child: buildText(
                          'Otros',
                          TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/help');
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 22, top: 16),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.help, color: Colors.white, size: 30),
                          SizedBox(
                            width: size.width * 0.15,
                          ),
                          buildText(
                              'Ayuda',
                              TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          Container()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
