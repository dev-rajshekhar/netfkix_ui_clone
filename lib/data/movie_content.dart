import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/assets.dart';

class MovieContent {
  final String name;
  final String imageUrl;
  final String imageLogoUrl;

  const MovieContent(
      {@required this.name, @required this.imageUrl, this.imageLogoUrl});
}

final List<MovieContent> getPreviewList = const [
  MovieContent(
    name: 'Outside  the Wire',
    // imageLogoUrl: Assets.netflixSplashLogo,

    imageLogoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9NdrcZX90V6p3KqB8pRX3VObOdZt7QmS9kw&usqp=CAU",
    imageUrl: "https://occ-0-1001-444.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABcH5tSy1JOcHOGTlVjEHk19hcTTlGzEEntAto_ZEIzKtvv6GSaiiMjWA221ooe7cMZXxfv9AFg-VyQtf__VHpd4WXWxT.jpg?r=5cc",
  ),
  MovieContent(
    name: 'Witcher',
    imageUrl: "https://cdn.mos.cms.futurecdn.net/P9rjafUps3PomEZCmknJBk.jpg",
    // imageLogoUrl: Assets.netflixSplashLogo

    imageLogoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuCXfhRzhMU7bmX5sjDbE2WAW1r-lq6ba9Ww&usqp=CAU",
  ),
  MovieContent(
    name: 'Outside the Wire',
    imageUrl: "https://www.digitaltveurope.com/files/2019/08/La-Casa-de-Papel-Money-Heist.jpeg",
    // imageLogoUrl: Assets.netflixSplashLogo
    imageLogoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUEtEI6nAJhpxq-N60TFvN7FuBH4e1rhDtKA&usqp=CAU",
  ),  MovieContent(
    name: 'Intersteller',
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXhxTGEHOC_qu9zeQTmJqNK6hAPjs48q_rcA&usqp=CAU",
    imageLogoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhYxkmK0BQ6dDc7JPLCYAGnIGPJJkOJzk-QA&usqp=CAU"
  ),

];

final List<MovieContent> getTrendingNow = const [
  MovieContent(
    name: 'Below Zero',

  ),
  MovieContent(
    name: 'Witcher',
    imageUrl: "https://cdn.mos.cms.futurecdn.net/P9rjafUps3PomEZCmknJBk.jpg",
    // imageLogoUrl: Assets.netflixSplashLogo

    imageLogoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuCXfhRzhMU7bmX5sjDbE2WAW1r-lq6ba9Ww&usqp=CAU",
  ),
  MovieContent(
    name: 'Outside the Wire',
    imageUrl: "https://www.digitaltveurope.com/files/2019/08/La-Casa-de-Papel-Money-Heist.jpeg",
  ),  MovieContent(
      name: 'Intersteller',
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXhxTGEHOC_qu9zeQTmJqNK6hAPjs48q_rcA&usqp=CAU",
      imageLogoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhYxkmK0BQ6dDc7JPLCYAGnIGPJJkOJzk-QA&usqp=CAU"
  ),

];
