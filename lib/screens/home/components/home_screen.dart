import 'package:fashion_app/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import '../../../components/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: buildAppBar(),
        preferredSize: Size.fromHeight(50.0),
      ),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
