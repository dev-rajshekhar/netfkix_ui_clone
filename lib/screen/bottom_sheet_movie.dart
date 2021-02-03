import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/data/movie_content.dart';
import 'package:netflix_ui_cloe/screen/widgets/my_list_button.dart';
import 'package:netflix_ui_cloe/screen/widgets/play_pause_button.dart';

class BottomSheetMovieItem extends StatelessWidget {
  final MovieContent movieContent;
  const BottomSheetMovieItem({Key key, this.movieContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget MovieeInfoContainer() {
      return Container(
        padding: EdgeInsets.only(top: 15.0, left: 5, right: 5),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
                height: 120,
                width: 90,
                image: NetworkImage(movieContent.imageUrl)),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movieContent.name,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.close, color: AppColors.white, size: 25)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "2017",
                        style: TextStyle(
                            color: AppColors.inactiveGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "16+",
                        style: TextStyle(
                            color: AppColors.inactiveGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "2h14m",
                        style: TextStyle(
                            color: AppColors.inactiveGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Flexible(
                    child: Text(
                      "Summaries. A gangster family epic set in 1900s England, centering on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby. Peaky Blinders is an English television crime drama set in 1920s Birmingham, England in the aftermath of World War I.",
                      maxLines: 4,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget MovieAction() {
      return Container(
        height: 50,
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PlayPauseButton(
              title: "Play",
              icon: Icons.play_arrow,
            ),
            MyListButton(
              icon: Icons.add,
              title: "My List",
            ),
            MyListButton(
              title: "Info",
              icon: Icons.info_outline,
            )
          ],
        ),
      );
    }

    Widget MoveDetailsActionView() {
      return Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 40,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(
                Icons.info_outline,
                size: 30,
                color: AppColors.white,
              ),
              Text(
                "Details & Info",
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ]),
            Icon(
              Icons.navigate_next,
              size: 30,
              color: AppColors.white,
            ),
          ],
        ),
      );
    }

    return Container(
      height: 300,
      child: Column(
        children: [
          MovieeInfoContainer(),
          MovieAction(),
          Divider(
            height: 1,
            color: AppColors.textGrey,
          ),
          MoveDetailsActionView(),
        ],
      ),
      decoration: BoxDecoration(
          color: AppColors.searchBarBg,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
    );
  }
}
