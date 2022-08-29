import 'package:flutter/material.dart';

import 'package:flutter_plant_app/screen/home/components/featured_plants.dart';
import 'package:flutter_plant_app/screen/home/components/recommend_plants.dart';
import 'package:flutter_plant_app/screen/home/components/title_with_more_btn.dart';

import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
