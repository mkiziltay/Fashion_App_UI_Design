import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Pink Sweater",
            country: "Made in Turkey",
            price: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 48,
                child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))))),
                child: Text("Buy Now",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, height: 2.6)),
              ),
              ),
              SizedBox(width: 10),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))))),
                child: Text("Description",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, height: 2.6)),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
