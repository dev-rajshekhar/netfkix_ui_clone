import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';

class TrendingInCountry extends StatelessWidget {
  final String positionImage;
  final String imageUrl;
  final String name;

  const TrendingInCountry(
      {Key key,
      @required this.positionImage,
      @required this.imageUrl,
      @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      width: 120,
      height: 160,
      child: Stack(
        children: [

          Positioned(
            left: 20,
            child: Image(

              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
              height: 160,
              width: 120,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(positionImage),
              color: AppColors.white,
              height: 120,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
