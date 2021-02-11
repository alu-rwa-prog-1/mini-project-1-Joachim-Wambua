import 'package:flutter/material.dart';

import '../../game_constants.dart';

// Creating Stateful Widgets for The Game Lists and Categories
class GameCategories extends StatefulWidget {
  @override
  _GameCategoriesState createState() => _GameCategoriesState();
}

class _GameCategoriesState extends State<GameCategories> {
  List<String> gameCategories = ["All", "Games", "Consoles", "Accessories", "VR Gear"];
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: default_padding),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gameCategories.length,
              itemBuilder: (context, index) => buildCategory(index))),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: default_padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(gameCategories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedCategoryIndex == index
                      ? textColour
                      : textLightColour,
                )),
            Container(
                margin:
                EdgeInsets.only(top: default_padding / 4), // Top Padding 5
                height: 2,
                width: 30,
                color: selectedCategoryIndex == index
                    ? Colors.black
                    : Colors.transparent)
          ],
        ),
      ),
    );
  }
}
