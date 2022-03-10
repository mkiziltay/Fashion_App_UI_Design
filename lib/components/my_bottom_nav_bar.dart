import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';


class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2),
      height: 50, //height of bottom nav bar container
      decoration: BoxDecoration(
        color: Colors.white, 
        boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/home.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/user-icon.svg"))
        ],
      ),
    );
  }
}

class buildAppBar extends StatelessWidget {
  const buildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text("2022 FASHION STYLE",style: TextStyle(fontWeight: FontWeight.bold)),
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/more.svg",
        color: Color.fromARGB(255, 3, 247, 154),
        height: 30),
        onPressed: () {//if pressed to app bar icon
        },
      ),
    );
  }
}
