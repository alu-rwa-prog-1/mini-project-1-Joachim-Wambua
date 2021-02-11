import 'package:flutter/material.dart';
import 'package:game_shop_app/details/components/product_title_with_image.dart';
import 'package:game_shop_app/game_constants.dart';
import 'package:game_shop_app/models/Products.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'colour_and_size.dart';
import 'counter_with_fav_button.dart';
import 'game_description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Returns total size of the whole screen(height & width)
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    // height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: <Widget>[
                        ColourAndSize(product: product),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GameDescription(product: product),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CounterWithfavButton(),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: AddToCart(product: product),
                        ),
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ))
        ],
      ),
    );
  }
}
