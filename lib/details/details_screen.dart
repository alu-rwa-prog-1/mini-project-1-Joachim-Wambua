import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_shop_app/details/components/body.dart';
import 'package:game_shop_app/game_constants.dart';
import 'package:game_shop_app/models/Products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Each product takes a corresponding colour
      backgroundColor: product.colour,
      appBar: buildAppBar(context),
      body: Body(product: product,)
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.colour,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg'),
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {},
            ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg'),
          onPressed: () {},
        ),
        SizedBox(width: default_padding / 2 ,)
      ],
    );
  }
}
