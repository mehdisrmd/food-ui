// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    Key? key,
    required this.width,
    required this.height,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .7,
      height: height * .3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
