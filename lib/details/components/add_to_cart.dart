import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_shop_app/models/Products.dart';

import '../../game_constants.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: default_padding),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: default_padding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.colour,
                )),
            child: IconButton(
              icon: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg"),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                color: product.colour,
                onPressed: () {},
                child: Text("Buy Now".toUpperCase(), style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
