// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ui1/providers/product-provider.dart';
import 'package:food_ui1/providers/themes/custon-theme.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var itemCounter = Provider.of<ProductProvider>(context).counter;
    var badge = Badge(
      padding: const EdgeInsets.all(3),
      elevation: 0,
      badgeColor: Colors.black,
      badgeContent: Text(
        '$itemCounter',
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      child: const Icon(CupertinoIcons.shopping_cart),
    );

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      elevation: 0,
      iconSize: 20,
      selectedItemColor: const Color(0xFFfe6b03),
      unselectedItemColor: customThemeProvidr.currentTheme == ThemeMode.light
          ? const Color(0xFFb7b9b8)
          : Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      currentIndex: _currentIndex,
      items: [
        const BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_filled,
            )),
        const BottomNavigationBarItem(
            label: 'Favorites', icon: Icon(CupertinoIcons.heart)),
        BottomNavigationBarItem(
          label: 'Cart',
          icon: itemCounter == 0
              ? const Icon(CupertinoIcons.shopping_cart)
              : badge,
        ),
        const BottomNavigationBarItem(
          label: 'Profile',
          icon: FaIcon(FontAwesomeIcons.user),
        ),
      ],
    );
  }
}
