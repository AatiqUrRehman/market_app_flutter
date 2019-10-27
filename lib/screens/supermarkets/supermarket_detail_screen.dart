import 'package:flutter/material.dart';
import 'package:nui_user/components/bottom-bar/bottom_bar_component.dart';
import 'package:nui_user/utils/assets_link.dart';
import 'package:nui_user/utils/color_constants.dart';

class SuperMarketDetailScreen extends StatefulWidget {
  @override
  _SuperMarketDetailScreenState createState() =>
      _SuperMarketDetailScreenState();
}

class _SuperMarketDetailScreenState extends State<SuperMarketDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.location_on,
          color: ColorConstants.iconBlack,
          size: 30,
        ),
        centerTitle: true,
        title: Container(
          width: 50,
          height: 50,
          child: Image.asset(assetsLink + 'logo.png'),
        ),
        actions: <Widget>[
          Icon(
            Icons.filter_list,
            color: ColorConstants.iconBlack,
            size: 30,
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset(
                assetsLink + 'signup.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 32,
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: ColorConstants.green, width: 1),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage(assetsLink + 'logo.jpg')))),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'mercadona'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                      color: ColorConstants.green),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: size.width * 0.94,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: size.height * 0.22,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 28,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Super COR',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: size.width,
              height: size.height * 0.12,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0))),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_up,
                    size: 28,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'la plaza',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: appBottomBar(context, 0),
    );
  }
}
