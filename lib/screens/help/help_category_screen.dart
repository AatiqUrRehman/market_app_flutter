import 'package:flutter/material.dart';
import 'package:nui_user/components/text/build_text.dart';
import 'package:nui_user/utils/color_constants.dart';

class HelpCategoryScreen extends StatefulWidget {
  @override
  _HelpCategoryScreenState createState() => _HelpCategoryScreenState();
}

class _HelpCategoryScreenState extends State<HelpCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 28,
            color: Colors.white,
          ),
        ),
        title: Text('Todas las Categorias'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: <Widget>[
                buildContainer(size),
                SizedBox(
                  height: 8,
                ),
                buildContainer(size),
                SizedBox(
                  height: 8,
                ),
                buildContainer(size),
                SizedBox(
                  height: 8,
                ),
                buildContainer(size),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone),
      ),
    );
  }

  Container buildContainer(Size size) {
    return Container(
      width: size.width * 0.94,
      padding: EdgeInsets.only(left: 8, right: 8),
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border.all(width: 1, color: ColorConstants.appGrey)),
      child: Row(
        children: <Widget>[
          Container(
            height: 17,
            width: 17,
            margin: EdgeInsets.only(top: 3.4),
            decoration: BoxDecoration(
                color: ColorConstants.orange, shape: BoxShape.circle),
          ),
          SizedBox(
            width: size.width * 0.04,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: buildText('Nombre de Categoria',
                TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward,
            size: 28,
            color: ColorConstants.orange,
          )
        ],
      ),
    );
  }
}
