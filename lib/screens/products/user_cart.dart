import 'package:flutter/material.dart';
import 'package:nui_user/components/butons/app_buttons.dart';
import 'package:nui_user/components/text/build_text.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class UserCart extends StatefulWidget {
  @override
  _UserCartState createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          width: size.width * 0.96,
          margin: EdgeInsets.only(left: size.width * 0.03),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                    height: size.height * 0.66,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          buildCartItem(size),
                          SizedBox(
                            height: 18,
                          ),
                          buildCartItem(size),
                          SizedBox(
                            height: 18,
                          ),
                          buildCartItem(size),
                          SizedBox(
                            height: 18,
                          ),
                          buildCartItem(size),
                          SizedBox(
                            height: 18,
                          ),
                          buildCartItem(size),
                          SizedBox(
                            height: 18,
                          ),
                          buildCartItem(size),
                          SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildText('Subtotal', TextStyle(fontSize: 18)),
                      buildText('1', TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildText('Impuestos ISV', TextStyle(fontSize: 18)),
                      buildText('1', TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildText('Cargo por Envio', TextStyle(fontSize: 18)),
                      buildText('1', TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "An Outline Border TextField",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  alignment: Alignment.bottomRight,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: ColorConstants.deepGreen,
                    child:
                        buildText('Checkout', TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Row buildCartItem(Size size) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            assetsLink + 'plant.png',
          ),
          decoration: BoxDecoration(
              color: ColorConstants.blue,
              borderRadius: BorderRadius.all(Radius.circular(4))),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildText('Tag Heuer WristWatch',
                TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 4,
            ),
            buildText(
                r'$ 1100',
                TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: ColorConstants.deepGreen)),
            SizedBox(
              height: 2,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 45,
                  height: 54,
                  child: FlatButton(
                    color: ColorConstants.appGrey,
                    onPressed: () {},
                    child: buildText('-', TextStyle(fontSize: 22)),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                buildText('12', TextStyle(fontSize: 22)),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 45,
                  height: 54,
                  child: FlatButton(
                    color: ColorConstants.appGrey,
                    onPressed: () {},
                    child: buildText('+', TextStyle(fontSize: 22)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 2,
              width: size.width * 0.68,
              color: ColorConstants.deepGreen,
            )
          ],
        )
      ],
    );
  }
}
