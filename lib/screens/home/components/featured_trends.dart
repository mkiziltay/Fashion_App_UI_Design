import 'package:flutter/material.dart';
import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          FeaturedPlantCard(
              image: "assets/images/trend_1.jpg", press: () {}),
          FeaturedPlantCard(
              image: "assets/images/trend_2.jpg", press: () {})
        ]));
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    this.image,
    this.press,
  }) : super(key: key);

  final String? image;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        height: 180,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image.toString()), fit: BoxFit.cover)),
      ),
    );
  }
}
