import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_shop_app/details/details_screen.dart';
import 'package:game_shop_app/game_constants.dart';
import 'package:game_shop_app/models/Products.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: default_padding),
          child: Text(
            "One-Stop Gaming Store",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        GameCategories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: default_padding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: default_padding,
                crossAxisSpacing: default_padding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              product: products[index],
                            ))),
              ),
            ),
          ),
        )
      ],
    );
  }
}
