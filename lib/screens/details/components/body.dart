import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';
import 'package:flutter_plant/screens/details/components/icons_and_image.dart';
import 'package:flutter_plant/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(children: [
        const IconsAndImage(),
        const TitleAndPrice(
          title: 'Angelica',
          country: 'Russia',
          price: 440,
        ),
        const SizedBox(height: kDefaultPadding),
        Row(
          children: [
            Container(
              width: size.width / 2,
              height: 84,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Description',
                  style: TextStyle(color: kTextColor, fontSize: 16),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
