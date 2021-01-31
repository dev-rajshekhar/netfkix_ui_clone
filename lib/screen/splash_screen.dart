import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/assets.dart';
import 'package:netflix_ui_cloe/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration duration = const Duration(milliseconds: 3000);

  void route() {
    Navigator.pushNamed(context, '/users');
  }

  Future<Timer> startTime() async {
    return Timer(duration, route);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          color: AppColors.appBg,
          child: Center(
            child: Image.asset(
              Assets.netflixSplashLogo,
              fit: BoxFit.contain,
              width: 180,
              height: 60,
            ),
          ),
        )
      ],
    );
  }
}
