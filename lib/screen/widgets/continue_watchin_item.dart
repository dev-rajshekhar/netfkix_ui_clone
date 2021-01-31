import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';

class ContinueWatching extends StatelessWidget {
  final String imageUrl;
  final String duration;
  final String name;

  const ContinueWatching({Key key, this.imageUrl, this.duration, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 90,
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
                height: 120,
              ),
              Positioned(
                  bottom: 2,
                  left: 10,
                  right: 10,
                  child: Text(
                    duration,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 10,
                        color: AppColors.white),
                  )),

            ],
          ),
          LinearProgressIndicator(
            backgroundColor: AppColors.redColor,

          )

        ],
      ),
    );
  }
}
