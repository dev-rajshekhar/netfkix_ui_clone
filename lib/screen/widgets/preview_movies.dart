import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/data/movie_content.dart';

class PreviewMovies extends StatelessWidget {
  final String title;
  final List<MovieContent> previewMoviesList;

  const PreviewMovies({Key key,String this.title,  this.previewMoviesList}) : super(key: key);


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
        Container(
          height: 120,
          child: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: previewMoviesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                      height: 120,
                      child:
                      Stack(
                        children: [
                          CircleAvatar(
                              radius: 50.0,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 48.0,
                                backgroundImage: NetworkImage(previewMoviesList[index].imageUrl),
                              )),
                          Positioned(
                            bottom: 10,
                              child: Image(image: NetworkImage(previewMoviesList[index].imageLogoUrl),height: 20,width: 100,fit: BoxFit.cover,alignment: Alignment.center,)),
                        ],
                      )
                  ),
                );
              }),
        )
      ],
    );
  }
}
