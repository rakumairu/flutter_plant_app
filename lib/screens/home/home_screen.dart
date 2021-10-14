import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';
import 'package:flutter_plant/screens/home/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const BottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      bottomOpacity: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
      ),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: const Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.38),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/flower.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/user-icon.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
