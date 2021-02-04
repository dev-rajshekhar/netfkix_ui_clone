import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/data/movie_content.dart';

class ContinueWatching extends StatelessWidget {
  final List<MovieContent> continueWatchingList;
  final String title;
  const ContinueWatching(
      {Key key, @required this.continueWatchingList, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 160,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: continueWatchingList.length,
              itemBuilder: (_, index) {
                MovieContent content = continueWatchingList[index];
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 160,
                  width: 90,
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(content.imageUrl),
                        fit: BoxFit.cover,
                        height: 120,
                        width: 90,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackShape: RectangularSliderTrackShape(),
                          trackHeight: 4.0,
                          thumbColor: Colors.redAccent,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 0.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 0.0),
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
              }),
        )
      ],
    );
  }
}
