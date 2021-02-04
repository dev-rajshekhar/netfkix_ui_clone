import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/data/movie_content.dart';
import 'package:netflix_ui_cloe/screen/widgets/continue_watchin_item.dart';
import 'package:netflix_ui_cloe/screen/widgets/home_screen_header.dart';
import 'package:netflix_ui_cloe/screen/widgets/my_list_button.dart';
import 'package:netflix_ui_cloe/screen/widgets/play_pause_button.dart';
import 'package:netflix_ui_cloe/screen/widgets/preview_movies.dart';
import 'package:netflix_ui_cloe/screen/widgets/trending_in_country.dart';
import 'package:netflix_ui_cloe/screen/widgets/trending_now.dart';

import 'bottom_sheet_movie.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    void onItemClick(
        MovieContent movieContent, bool isLongPressed, bool isTapped) {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          useRootNavigator: true,
          context: context,
          builder: (context) {
            return BottomSheetMovieItem(
              movieContent: movieContent,
            );
          });
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgGrey,
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image(
                    image: NetworkImage(
                      "https://wallpapercave.com/wp/wp2040377.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                        AppColors.inactiveGrey.withOpacity(0.0),
                        AppColors.inactiveGrey
                      ])),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                ),
                Positioned(
                  left: 30,
                  right: 30,
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MyListButton(
                        icon: Icons.add,
                        title: "My List",
                      ),
                      const PlayPauseButton(
                        title: "Play",
                        icon: Icons.play_arrow,
                      ),
                      const MyListButton(
                        icon: Icons.info_outline,
                        title: "Info",
                      ),
                    ],
                  ),
                ),
                Positioned(left: 10, right: 10, child: Header()),
              ],
            ),
            PreviewMovies(
              title: "Preview",
              previewMoviesList: getPreviewList,
            ),
            TrendingInCountry(
                title: "Trending In India",
                trendingList: getTrendingInIndia,
                onItemClick: onItemClick),
            TrendingNow(
              title: "Trending Now",
              imageList: getTrendingNow,
              onItemClick: onItemClick,
            ),
            ContinueWatching(
              title: "Continue Watching",
              continueWatchingList: getContinueWatching,
            ),
            TrendingNow(
              title: "Netflix Original",
              imageList: getNetflixOriginal,
              onItemClick: onItemClick,
            ),
          ],
        ),
      ),
    );
  }
}
