import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../details/components/details_screen.dart';


class RecommendTrends extends StatelessWidget {
  const RecommendTrends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            country: "Made in TR",
            image: "assets/images/pink.jpg",
            price: 40,
            title: "PINK SWEATER",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            country: "Made in RU",
            image: "assets/images/black.jpg",
            price: 50,
            title: "Black Sweater",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            country: "Made in TR",
            image: "assets/images/white.jpg",
            price: 40,
            title: "White T-Shirt",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
                  },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String? image, title, country;
  final int? price;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Image.asset(image.toString())/*image path */,
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
                  },
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23))
              ],
            ),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button),
                  TextSpan(
                      text: "$country".toUpperCase(),
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                ])),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
