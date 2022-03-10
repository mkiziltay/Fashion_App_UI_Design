import 'package:flutter/material.dart';
import '../../../constants.dart';



class TitleWithButtonMore extends StatelessWidget {
  const TitleWithButtonMore({
    Key? key,
    this.title,
    this.press,
  }) : super(key: key);

  final String? title;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderLine(text: title.toString()),
          Spacer(),
          ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
                child: Text("More",
                    style: TextStyle(color: Colors.white)),
              )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            text.toString(), //nulSafety error => if not parse to String.
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(right: kDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.1)//Color of underline
          ),
        )
      ]),
    );
  }
}
