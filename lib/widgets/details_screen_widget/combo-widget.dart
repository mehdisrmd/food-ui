// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Combo extends StatelessWidget {
  const Combo({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: width,
        height: height * .3,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const [
                TextColumnLeft(name: 'Med Fries + Med Pepsi'),
                TextColumnLeft(name: 'King Fries + King pepsi'),
                TextColumnLeft(name: 'Veg Strips + Medium pepsi'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const [
                TextColumnRight(price: 15.59),
                TextColumnRight(price: 25.49),
                TextColumnRight(price: 22.44),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextColumnLeft extends StatelessWidget {
  const TextColumnLeft({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name, style: Theme.of(context).textTheme.headline6);
  }
}

class TextColumnRight extends StatelessWidget {
  const TextColumnRight({super.key, required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('\$$price', style: Theme.of(context).textTheme.subtitle1),
        const SizedBox(
          width: 3,
        ),
        Checkbox(value: false, onChanged: (t) {}),
      ],
    );
  }
}
