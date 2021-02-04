import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/assets.dart';
import 'package:netflix_ui_cloe/colors.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
              onPressed: () {}),
          const Image(
            image: AssetImage(Assets.netflixSplashLogo),
            width: 100,
            height: 40,
            fit: BoxFit.fill,
          ),
          IconButton(
              icon: const Icon(
                Icons.edit,
                color: AppColors.white,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
