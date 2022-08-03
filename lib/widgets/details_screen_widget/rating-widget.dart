// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_ui1/providers/themes/custon-theme.dart';

class RatingImage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  RatingImage({
    required this.name,
    required this.index,
    required this.width,
    required this.height,
  });

  final String name;
  final int index;
  final double width;
  final double height;
  double initialRationg = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.headline5),
              SizedBox(height: height * 0.01),
              RatingBar.builder(
                unratedColor: customThemeProvidr.currentTheme == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
                itemSize: width * 0.04,
                initialRating: initialRationg,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (ctx, index) {
                  if (index >= initialRationg) {
                    return const Icon(
                      Icons.star_outline_rounded,
                      color: Colors.black,
                    );
                  }
                  return const Icon(
                    Icons.star,
                    color: Colors.amber,
                  );
                },
                onRatingUpdate: (rating) {},
              )
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: customThemeProvidr.currentTheme == ThemeMode.light
                    ? index == 0
                        ? Colors.pink.shade200.withOpacity(.4)
                        : const Color(0xFFb7b9b8).withOpacity(0.1)
                    : Colors.transparent,
                shape: BoxShape.circle),
            child: const Icon(
              CupertinoIcons.suit_heart_fill,
              color: Colors.pink,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
