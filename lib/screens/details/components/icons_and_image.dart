import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';
import 'package:flutter_plant/screens/details/components/icons_information.dart';
import 'package:flutter_plant/screens/details/components/plant_image.dart';

class IconsAndImage extends StatelessWidget {
  const IconsAndImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: kDefaultPadding * 3,
      ),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: const [
            IconsInformation(),
            PlantImage(),
          ],
        ),
      ),
    );
  }
}
