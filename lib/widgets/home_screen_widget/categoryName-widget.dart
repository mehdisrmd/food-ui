// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: height * 0.02, left: width * 0.05, right: width * 0.05),
      child: FittedBox(
        child: Text(
          'Categories',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
