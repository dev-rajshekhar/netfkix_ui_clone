import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/app_constanst.dart';
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
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Icon(Icons.close, color: AppColors.white, size: 25)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "2017",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        "16+",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        "2h14m",
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  ),
                  Flexible(
                    child: Text(
                      "Summaries. A gangster family epic set in 1900s England, centering on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby. Peaky Blinders is an English television crime drama set in 1920s Birmingham, England in the aftermath of World War I.",
                      maxLines: 4,
                      style: Theme.of(context).textTheme.subtitle2,
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
              title: AppConstants.Play,
              icon: Icons.play_arrow,
            ),
            MyListButton(
              icon: Icons.add,
              title: AppConstants.MyList,
            ),
            MyListButton(
              title: AppConstants.Info,
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
                AppConstants.DetailsInfo,
                style: Theme.of(context).textTheme.subtitle2,
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
      height: 260,
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
