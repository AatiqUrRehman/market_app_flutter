import 'package:flutter/material.dart';
import 'package:nui_user/components/text/build_text.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class ToAuthUserScreen extends StatefulWidget {
  @override
  _ToAuthUserScreenState createState() => _ToAuthUserScreenState();
}

class _ToAuthUserScreenState extends State<ToAuthUserScreen> {
  String selectedLocation = 'SAP';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            assetsLink + 'city.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: buildText('Crear cuenta',
                        TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: size.width * 0.70,
                    height: 40,
                    decoration: BoxDecoration(
                        color: ColorConstants.orange,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: buildText(
                          'Selecciona tu ciudad',
                          TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: size.width * 0.70,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 1, color: Colors.white)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedLocation,
                        items: <String>['SAP', 'TGU'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(
                              padding: EdgeInsets.only(left: 12),
                              child: buildText(
                                  value,
                                  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {
                          setState(() {
                            selectedLocation = _;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    child: RaisedButton(
                      color: Colors.transparent,
                      child: Text(
                        'Inicia Sesion',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      shape: StadiumBorder(
                          side: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
