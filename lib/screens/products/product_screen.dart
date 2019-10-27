import 'package:flutter/material.dart';
import 'package:nui_user/components/app_drawer.dart';
import 'package:nui_user/components/bottom-bar/bottom_bar_component.dart';
import 'package:nui_user/components/butons/app_buttons.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool pressAttention = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List imagesList = [
      'watermelon',
      'banana',
      'graphs',
      'tomato',
    ];

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          icon: Icon(
            Icons.menu,
            color: ColorConstants.orange,
            size: 28,
          ),
        ),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(),
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 26),
                child: Image.asset(assetsLink + 'logo.png'),
              ),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 28,
                    color: ColorConstants.orange,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  })
            ],
          ),
        ),
      ),
      drawer: appDrawer(context, 1, size),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 6,
            ),
            Column(
              children: <Widget>[
                Container(
                  width: size.width * 0.96,
                  height: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          width: size.width * 0.70,
                          child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Buscar Productos',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none),
                                  contentPadding: EdgeInsets.zero))),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        width: size.width * 0.22,
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              icon: Icon(Icons.keyboard_arrow_down),
                              value: 'A',
                              items: <String>['A', 'B', 'C', 'D']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: size.width * 0.662,
                  height: 1,
                  color: Colors.grey,
                  margin: EdgeInsets.only(left: size.width * 0.042),
                ),
                Container(
                  width: size.width * 0.22,
                  height: 1,
                  color: Colors.grey,
                  margin: EdgeInsets.only(left: size.width * 0.042),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            buildListBar(size),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.024),
              height: 220,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.only(top: 30),
                      child: buildProduct(
                          size, imagesList[index] + '.png', pressAttention));
                },
              ),
            ),
            SizedBox(
              height: 34,
            ),
            buildListBar(size),
            SizedBox(
              height: 34,
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.024),
              height: 220,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.only(top: 30),
                      child: buildProduct(
                          size, imagesList[index] + '.png', pressAttention));
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: appBottomBar(context, 1),
    );
  }

  Container buildListBar(Size size) {
    return Container(
      width: size.width * 0.96,
      alignment: Alignment.centerLeft,
      margin:
          EdgeInsets.only(left: size.width * 0.04, right: size.width * 0.025),
      child: Row(
        children: <Widget>[
          Container(
            child: Text('Alimentacion General'),
          ),
          Spacer(),
          Container(
            width: 90,
            height: 20,
            child: RaisedButton(
              color: ColorConstants.orange,
              onPressed: () {},
              shape: StadiumBorder(),
              child: Text(
                'SEE MORE',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column buildProduct(Size size, String img, bool pressAttention) {
    return Column(
      children: <Widget>[
        Container(
          width: size.width * 0.35,
          height: 160,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only()),
            child: Column(
              children: <Widget>[
                FractionalTranslation(
                  translation: Offset(0.0, -0.35),
                  child: Container(
                    child: Image.asset(
                      assetsLink + '$img',
                      height: 80,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: buildText('Frutas y verduras',
                            TextStyle(fontSize: 11, color: Colors.grey)),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: buildText(
                            'Fresh Apples',
                            TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: buildText(
                            r'2.03 $',
                            TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: ColorConstants.green)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(0.0, -0.15),
          child: InkWell(
            onTap: () {
              setState(() {
                pressAttention = true;
              });
              print(pressAttention);
            },
            child: Container(
              width: size.width * 0.33,
              height: 26,
              decoration: BoxDecoration(
                  color: pressAttention ? ColorConstants.orange : Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0))),
              child: Center(
                child: buildText('AGREGAR A CARRITO',
                    TextStyle(color: Colors.white, fontSize: 10)),
              ),
            ),
          ),
        )
      ],
    );
  }

  Text buildText(String title, TextStyle style) {
    return Text(
      '$title',
      style: style,
    );
  }

  Widget buildCustomPrefixIcon(IconData iconData) {
    return Container(
      width: 0,
      alignment: Alignment(-0.80, 0.0),
      child: Icon(
        iconData,
        color: Colors.grey,
      ),
    );
  }
}
