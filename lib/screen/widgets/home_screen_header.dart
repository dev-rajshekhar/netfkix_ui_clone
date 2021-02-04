import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/app_constanst.dart';
import 'package:netflix_ui_cloe/assets.dart';
import 'package:netflix_ui_cloe/colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Image(
            image: AssetImage(Assets.netflixLogo),
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
          Text(
            AppConstants.TvShows,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Text(
            AppConstants.MyList,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Text(
            AppConstants.MyList,
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
