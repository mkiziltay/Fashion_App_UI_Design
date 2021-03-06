import 'package:fashion_app/screens/home/components/recommend_trend.dart';
import 'package:fashion_app/screens/home/components/title_with_buttonmore.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'featured_trends.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //size will provide us total height of our screen
    Size size = MediaQuery.of(context).size;//Size of our screen
    return SingleChildScrollView(//it enabling scrolling the screen.
      child: Column(
        children: <Widget>[//we can write children property like this: *children: [*
          HeaderWithSearchBox(size: size),
          TitleWithButtonMore(title: "Recommended For You",
          press: () {//ToDo: if pressed to button more. Can navigate to other page for more items
          }),
          RecommendTrends(),
          TitleWithButtonMore(
            title: "Featured Fashion",
            press: () {//ToDo: if pressed to button more. Can navigate to other page for more items
            },
          ),
          FeaturedTrends(),
          SizedBox(height: kDefaultPadding),//space bottom of Featured
        ],
      ),
    );
  }
}
