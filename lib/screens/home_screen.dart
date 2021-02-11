import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_shop_app/game_constants.dart';
import 'package:game_shop_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            // Default icon colour
            color: Colors.black,
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            // Default icon colour
            color: Colors.black,
            onPressed: () {}),
        SizedBox(width: default_padding / 2)
      ],
    );
  }
}
