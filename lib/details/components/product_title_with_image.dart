import 'package:flutter/material.dart';
import 'package:game_shop_app/models/Products.dart';

import '../../game_constants.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: default_padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Video Game\n",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.gameTitle,
            style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: default_padding),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "Price\n"),
                      TextSpan(
                          text: "\Rwf ${product.gamePrice}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))
                    ])),
              ),
              SizedBox(width: default_padding),
              Expanded(
                child: Image.asset(
                  product.gameImage,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
