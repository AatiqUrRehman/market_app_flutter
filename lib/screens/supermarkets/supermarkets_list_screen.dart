import 'package:flutter/material.dart';
import 'package:nui_user/utils/assets_link.dart';

class SupermarketsList extends StatefulWidget {
  @override
  _SupermarketsListState createState() => _SupermarketsListState();
}

class _SupermarketsListState extends State<SupermarketsList> {
  TextStyle fontStyle = TextStyle(color: Colors.white);
  List superMarkets = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
          itemCount: superMarkets.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return buildSupermarketItem(size);
          }),
    );
  }

  Column buildSupermarketItem(Size size) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/market_details');
          },
          child: Container(
            width: size.width * 0.96,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2))),
            height: 200,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  assetsLink + 'fotografias1.jpg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
                Container(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'MamaShopper',
                    style: fontStyle.copyWith(
                        fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Nuisuper desde L.00 Pedido Min: L.120.00',
                      style: fontStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 6,
        )
      ],
    );
  }
}
