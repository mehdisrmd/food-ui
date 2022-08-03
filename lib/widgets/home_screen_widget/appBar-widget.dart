// ignore_for_file: file_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:food_ui1/providers/themes/custon-theme.dart';

enum ThemeFilter { lightMode, darkMode, systemMode }

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  double height;
  double width;
  BuildContext context;
  AppBar appBar;
  AppBarWidget(
      {Key? key, required this.height,
      required this.width,
      required this.context,
      required this.appBar}) : super(key: key);
  @override
  Widget build(context) {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(top: height * 0.02, left: width * .05),
        child: SizedBox(
          width: 30,
          height: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/grid.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      actions: [
        PopupMenuButton(
          icon: Icon(
            Icons.more_vert,
            color: Theme.of(context).iconTheme.color,
          ),
          itemBuilder: (_) => const [
            PopupMenuItem(
              child: Text('lightMode'),
              value: ThemeFilter.lightMode,
            ),
            PopupMenuItem(
              child: Text('darkMode'),
              value: ThemeFilter.darkMode,
            ),
            PopupMenuItem(
              child: Text('systemMode'),
              value: ThemeFilter.systemMode,
            ),
          ],
          onSelected: (ThemeFilter value) {
            customThemeProvidr.selectMode(value.index);
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.02, right: width * .06),
          child: SizedBox(
            width: 35,
            height: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image.asset(
                'assets/images/profilePic.jpg',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(appBar.preferredSize.height);
}
