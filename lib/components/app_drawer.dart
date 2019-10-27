import 'package:flutter/material.dart';
import 'package:nui_user/components/text/build_text.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

Drawer appDrawer(BuildContext context, int selectedItem, Size size) {
  var listItems = [
    'lacteos',
    'carnes',
    'embutidos',
    'frutas',
    'verduras',
    'enlatados',
    'harinas'
  ];
  return Drawer(
    child: Container(
      color: ColorConstants.deepGreen,
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.14,
            width: double.infinity,
            color: ColorConstants.lightGreen,
            child: SafeArea(
              child: Image.asset(
                assetsLink + 'logo.png',
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/user_profile_scsreen');
            },
            child: Container(
              padding: EdgeInsets.all(14),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          buildText(
                              'Marvina Ortega',
                              TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                          buildText(
                              'email@email.com',
                              TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                          buildText(
                              '9999-9999',
                              TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 32,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  line(size),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: size.height * 0.40,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          buildDrwerList(listItems[0], false),
                          buildDrwerList(listItems[1], true),
                          buildDrwerList(listItems[2], false),
                          buildDrwerList(listItems[3], true),
                          buildDrwerList(listItems[4], false),
                          buildDrwerList(listItems[5], true),
                          buildDrwerList(listItems[6], false),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 22),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      line(size),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.shopping_basket,
                              color: Colors.white, size: 28),
                          vSpace(12.0),
                          verticalLine(),
                          vSpace(12.0),
                          Icon(Icons.markunread_mailbox,
                              color: Colors.white, size: 28),
                          vSpace(12.0),
                          verticalLine(),
                          vSpace(12.0),
                          Icon(Icons.query_builder,
                              color: Colors.white, size: 28),
                          vSpace(12.0),
                          verticalLine(),
                          vSpace(12.0),
                          Icon(Icons.question_answer,
                              color: Colors.white, size: 28),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      line(size),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: buildText('Cerrar sesion',
                            TextStyle(fontSize: 12, color: Colors.white)),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    ),
  );
}

SizedBox vSpace(double space) {
  return SizedBox(
    width: space,
  );
}

Container verticalLine() {
  return Container(
    height: 26,
    width: 1,
    color: Colors.white,
  );
}

Container line(Size size) {
  return Container(
    width: size.width,
    color: Colors.white,
    height: 2,
  );
}

Container buildDrwerList(String text, bool isodd) {
  return Container(
    color: isodd ? ColorConstants.lightGreen : ColorConstants.deepGreen,
    padding: EdgeInsets.all(4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 17,
          width: 17,
          margin: EdgeInsets.only(top: 3.4),
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        ),
        SizedBox(
          width: 8,
        ),
        buildText(
            text.toUpperCase(),
            TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20)),
        SizedBox(
          height: 8,
        )
      ],
    ),
  );
}
