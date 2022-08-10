// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ui1/controllers/themes/custon-theme.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
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
          top: height * 0.03, left: width * 0.05, right: width * 0.05),
      child: Row(
        children: [
          Flexible(
            flex: 8,
            child: Container(
                constraints: BoxConstraints(
                  maxWidth: width * .774,
                ),
                width: width * .76,
                height: height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                  ),
                )),
          ),
          const SizedBox(width: 10),
          Flexible(
            flex: 1,
            child: Container(
              width: width * .1,
              height: height * 0.048,
              decoration: BoxDecoration(
                  border: customThemeProvidr.currentTheme == ThemeMode.light
                      ? null
                      : Border.all(color: const Color(0xFF16202a)),
                  boxShadow: customThemeProvidr.currentTheme == ThemeMode.light
                      ? [
                          BoxShadow(
                              color: const Color.fromARGB(255, 255, 138, 54)
                                  .withOpacity(.3),
                              blurRadius: 5,
                              offset: const Offset(3, 5))
                        ]
                      : null,
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor),
              child: const Padding(
                padding: EdgeInsets.all(3),
                child: FittedBox(
                  child: Icon(
                    Icons.space_dashboard_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
