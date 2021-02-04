import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/data/movie_content.dart';

class TrendingInCountry extends StatelessWidget {
  final List<MovieContent> trendingList;
  final String title;
  final Function onItemClick;

  const TrendingInCountry(
      {Key key,
      @required this.trendingList,
      @required this.title,
      this.onItemClick})
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
          child: Text(title, style: Theme.of(context).textTheme.headline1),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 160,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingList.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                MovieContent movieContent = trendingList[index];

                return InkWell(
                  onTap: () {
                    onItemClick(movieContent, false, true);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 160,
                    width: 120,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(movieContent.imageUrl),
                            height: 160,
                            width: 120,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(movieContent.trendingPositionImg),
                            color: AppColors.white,
                            height: 120,
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
