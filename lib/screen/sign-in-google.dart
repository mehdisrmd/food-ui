// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:food_ui1/providers/google-signin-provider.dart';
import 'package:food_ui1/providers/themes/custon-theme.dart';

class GoogleSignInScreen extends StatefulWidget {
  const GoogleSignInScreen({Key? key}) : super(key: key);

  @override
  State<GoogleSignInScreen> createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignInScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GooogleSignInProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 50,
          child: MaterialButton(
              height: 50,
              elevation: 3,
              color: customThemeProvidr.currentTheme == ThemeMode.light
                  ? const Color(0xFFfe6b03)
                  : const Color(0xFF16202a),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const FaIcon(FontAwesomeIcons.google, color: Colors.black),
                  Text(
                    'Sign in with Google',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              onPressed: () {
                provider.googleLogin();
              }),
        ),
      ),
    );
  }
}
