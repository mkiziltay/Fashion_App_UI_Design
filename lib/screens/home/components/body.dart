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
    //It will provide us total height of our screen
    Size size = MediaQuery.of(context).size;//Size of our screen
    return SingleChildScrollView(//it enabling scrolling the screen.
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithButtonMore(title: "Recommended For You",
          press: () {//if pressed to more button, can navigate to different page
          }),
          RecommendTrends(),
          TitleWithButtonMore(
            title: "Featured Fashion",
            press: () {},
          ),
          FeaturedTrends(),
          SizedBox(height: kDefaultPadding),//space bottom of Featured
        ],
      ),
    );
  }
}
