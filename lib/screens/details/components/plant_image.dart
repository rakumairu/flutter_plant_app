import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';

class PlantImage extends StatelessWidget {
  const PlantImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(63),
            bottomLeft: Radius.circular(63),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 60,
              color: kPrimaryColor.withOpacity(0.29),
            )
          ],
          image: const DecorationImage(
              alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/img.png'))),
    );
  }
}
