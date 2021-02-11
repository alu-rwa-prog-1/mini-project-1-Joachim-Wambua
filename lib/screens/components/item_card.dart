import 'package:flutter/material.dart';
import 'package:game_shop_app/models/Products.dart';

import '../../game_constants.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(default_padding),
              // To Demo we use fixed height and width
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.colour,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset(product.gameImage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: default_padding / 4),
            child: Text(
              product.gameTitle,
              style: TextStyle(color: textLightColour),
            ),
          ), // Products is Demo List
          Text(
            "\Rwf ${product.gamePrice}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
