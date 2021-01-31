import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/data/movie_content.dart';

class TrendingNow extends StatelessWidget {
  final String title;
  final List<MovieContent> imageList;

  const TrendingNow({Key key,String this.title,  this.imageList}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold, fontSize: 18,),
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                      height: 120,
                      width: 90,
                      child: Image(image: NetworkImage(imageList[index].imageUrl),fit:BoxFit.cover,)

                  ),
                );
              }),
        )
      ],
    );
  }
}
