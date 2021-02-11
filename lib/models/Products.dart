import 'dart:ui';

import 'package:flutter/material.dart';

class Product {
  final String gameImage, gameTitle, gameDescription, gameRating;
  final int gamePrice, gameId;
  final Color colour;

  Product({
    this.gameId,
    this.gameImage,
    this.gameTitle,
    this.gamePrice,
    this.gameRating,
    this.gameDescription,
    this.colour,

  });
}

List<Product> products = [
  Product(
    gameId: 1,
    gameTitle: "Assassin'sCreed:Odyssey",
    gamePrice: 85000,
    gameRating: "Age 13+",
    gameDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/AssassinsOdyssey.png",
    colour: Color(0xFF3D82AE),
  ),

  Product(
    gameId: 2,
    gameTitle: "Call of Duty: ColdWar",
    gamePrice: 98000,
    gameRating: "Age 18+",
    gameDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/COD_ColdWar.png",
    colour: Color(0xFFD3A984),
  ),

  Product(
    gameId: 3,
    gameTitle: "PS5 DualSense Controller",
    gamePrice: 55000,
    gameRating: "Everyone",
    gameDescription:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/PS5DualsenseController.png",
    colour: Color(0xFF3D82AE),
  ),
  Product(
    gameId: 4,
    gameTitle: "Horizon Zero Dawn",
    gamePrice: 73000,
    gameRating: "Age 13+",
    gameDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/Horizon.png",
    colour: Color(0xFF989493),
  ),
  Product(
    gameId: 5,
    gameTitle: "PlayStation 5",
    gamePrice: 500000,
    gameRating: "Everyone",
    gameDescription:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/PS5.png",
    colour: Color(0xFF989493),
  ),
  Product(
    gameId: 6,
    gameTitle: "FIFA 21",
    gameRating: "Everyone",
    gamePrice: 108000,
    gameDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/Fifa21.png",
    colour: Color(0xFFE68398),
  ),
  Product(
    gameId: 7,
    gameTitle: "NBA 2k21",
    gamePrice: 95000,
    gameRating: "Everyone",
    gameDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/NBA2k21.png",
    colour: Color(0xFFFB7883),
  ),
  Product(
    gameId: 8,
    gameTitle: "God of War",
    gamePrice: 90000,
    gameRating: "Age 18+",
    gameDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In neque ligula, imperdiet vel malesuada nec, feugiat sed tortor. In consequat diam egestas tortor.",
    gameImage: "assets/images/GodofWar.png",
    colour: Color(0xFFAEAEAE),
  ),
];
