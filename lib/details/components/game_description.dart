import 'package:flutter/material.dart';
import 'package:game_shop_app/models/Products.dart';

import '../../game_constants.dart';


class GameDescription extends StatelessWidget {
  const GameDescription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: default_padding),
      child: Text(
        product.gameDescription,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}

