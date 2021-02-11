import 'package:flutter/material.dart';
import 'package:game_shop_app/models/Products.dart';


class ColourAndSize extends StatelessWidget {
  const ColourAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(text: "Rating\n",
                  style: TextStyle(color: Colors.black26),
                ),
                TextSpan(
                  text: "${product.gameRating}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ]),
            ),
          ),
        )
      ],
    );
  }
}
