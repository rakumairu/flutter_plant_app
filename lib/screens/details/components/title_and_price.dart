import 'package:flutter/material.dart';
import 'package:flutter_plant/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding * 0.5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
              ),
              Text(
                '\$$price',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: kPrimaryColor,
                    ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                country,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: kPrimaryColor.withOpacity(0.5)),
              )),
        )
      ],
    );
  }
}
