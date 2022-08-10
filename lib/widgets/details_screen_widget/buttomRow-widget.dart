// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_ui1/controllers/themes/custon-theme.dart';



class ButtomRow extends StatelessWidget {
  const ButtomRow({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      child: Row(
        children: [
          const Counter(),
          const Spacer(),
          MaterialButton(
              height: 50,
              elevation: 3,
              color: customThemeProvidr.currentTheme == ThemeMode.light
                  ? const Color(0xFFfe6b03)
                  : const Color(0xFF16202a),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Add item \$5.59',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({
    Key? key,
  }) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 125,
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: customThemeProvidr.currentTheme == ThemeMode.light
            ? null
            : Border.all(color: const Color(0xFF16202a)),
        borderRadius: BorderRadius.circular(20),
        color: customThemeProvidr.currentTheme == ThemeMode.light
            ? const Color(0xFF272c28)
            : const Color(0xFF16202a),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => setState(() {
              if (counter <= 1) {
                counter = 1;
              } else {
                counter--;
              }
            }),
            child: Text(
              '-',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          GestureDetector(
            onTap: () => setState(() => counter++),
            child: Text(
              '+',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
    );
  }
}
