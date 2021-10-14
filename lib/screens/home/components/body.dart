import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_plant/constants.dart';
import 'package:flutter_plant/screens/home/components/featured_plants.dart';
import 'package:flutter_plant/screens/home/components/header_with_seach_box.dart';
import 'package:flutter_plant/screens/home/components/recommended_plants.dart';
import 'package:flutter_plant/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            text: 'Recommended',
            press: () {},
          ),
          const RecommendedPlants(),
          TitleWithMoreButton(
            text: 'Featured Plants',
            press: () {},
          ),
          const FeaturedPlants()
        ],
      ),
    );
  }
}
