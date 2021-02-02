import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';

class ContinueWatching extends StatelessWidget {
  final String imageUrl;
  final String duration;
  final String name;

  const ContinueWatching(
      {Key key,
      @required this.imageUrl,
      @required this.duration,
      @required this.name,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 160,
      width: 90,
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            height: 120,
            width: 90,
          ),

          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackShape: RectangularSliderTrackShape(),
              trackHeight: 4.0,
              thumbColor: Colors.redAccent,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
            ),
            child: Slider(
              onChanged: (value) {},
              activeColor: AppColors.redColor,
              inactiveColor: AppColors.searchBarBg,
              value: .8,
            ),
          ),
          Container(
            color: AppColors.searchBarBg,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    iconSize: 20,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  iconSize: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
