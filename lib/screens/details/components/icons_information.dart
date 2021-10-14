import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';
import 'package:flutter_plant/screens/details/components/icon_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsInformation extends StatelessWidget {
  const IconsInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Spacer(),
            const IconCard(
              icon: 'assets/icons/sun.svg',
            ),
            const IconCard(
              icon: 'assets/icons/icon_2.svg',
            ),
            const IconCard(
              icon: 'assets/icons/icon_3.svg',
            ),
            const IconCard(
              icon: 'assets/icons/icon_4.svg',
            ),
          ],
        ),
      ),
    );
  }
}
