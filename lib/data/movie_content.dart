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
    imageLogoUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9NdrcZX90V6p3KqB8pRX3VObOdZt7QmS9kw&usqp=CAU",
    imageUrl:
        "https://occ-0-1001-444.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABcH5tSy1JOcHOGTlVjEHk19hcTTlGzEEntAto_ZEIzKtvv6GSaiiMjWA221ooe7cMZXxfv9AFg-VyQtf__VHpd4WXWxT.jpg?r=5cc",
  ),
  MovieContent(
    name: 'Witcher',
    imageUrl: "https://cdn.mos.cms.futurecdn.net/P9rjafUps3PomEZCmknJBk.jpg",
    // imageLogoUrl: Assets.netflixSplashLogo

    imageLogoUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuCXfhRzhMU7bmX5sjDbE2WAW1r-lq6ba9Ww&usqp=CAU",
  ),
  MovieContent(
    name: 'Outside the Wire',
    imageUrl:
        "https://www.digitaltveurope.com/files/2019/08/La-Casa-de-Papel-Money-Heist.jpeg",
    // imageLogoUrl: Assets.netflixSplashLogo
    imageLogoUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUEtEI6nAJhpxq-N60TFvN7FuBH4e1rhDtKA&usqp=CAU",
  ),
  MovieContent(
      name: 'Intersteller',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXhxTGEHOC_qu9zeQTmJqNK6hAPjs48q_rcA&usqp=CAU",
      imageLogoUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhYxkmK0BQ6dDc7JPLCYAGnIGPJJkOJzk-QA&usqp=CAU"),
];

final List<MovieContent> getTrendingNow = const [
  MovieContent(
      name: 'Below Zero',
      imageUrl:
          "https://occ-0-41-38.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABUpJBAAGeCHNWTkx3GHmw75qmFVUcEQgug_VM2ZhO2aecbXS-UFK2sJSx4Z7qDFcu5CktmY7lpsoze3nue0xXwMmZh6aECbWuIRWOhmOP6DMTxAt9Bqs63WRYKFO.jpg"),
  MovieContent(
    name: 'Peaky Blinder',
    imageUrl:
        "https://images-na.ssl-images-amazon.com/images/I/71Pfj+orjFL.jpg",
  ),
  MovieContent(
    name: 'Friends',
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr36U-PuDvChAEVlSaoecWpAyufqAF4tRDFw&usqp=CAU",
  ),
  MovieContent(
      name: 'SnowPiercer',
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BYTY1MDhjOWQtYWFkNS00ODA1LTg1YTUtZDhmZDE0MDJlMzIwXkEyXkFqcGdeQXVyMTI4MDc0NjU2._V1_UY1200_CR90,0,630,1200_AL_.jpg"),
  MovieContent(
      name: '100',
      imageUrl:
          "https://occ-0-2705-2706.1.nflxso.net/dnm/api/v6/evlCitJPPCVCry0BZlEFb5-QjKc/AAAABVhCq-joXTqmG8v1BE06Jq2BDH8u_1N9eQBQozgDdhl_DLcobnu3GfsaQMB_oeRnJf6cnBgw4a5sFUdG0O3sq2Or88r9ujLx7ipnKNS2WUhQrSmPrnHtzKtmNGcjtQ0uJ-k.jpg"),
];

final List<MovieContent> getNetflixOriginal = const [
  MovieContent(
      name: 'The Eddy',
      imageUrl:
          "https://www.vitalthrills.com/wp-content/uploads/2020/02/theeddy4.jpg.webp"),
  MovieContent(
      name: 'Japan Sinks 2020',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcxoibg9T18QKwZz1tP9mz6a9Gf2GacLQ1XA&usqp=CAU"),
  MovieContent(
      name: 'Emily In Paris',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi2k3KrrVL8flzgAJA4Qwuo2YpxlUqHXd1Vg&usqp=CAU"),
  MovieContent(
      name: 'White Lines',
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMDA1MjMyOTItZDdiZS00MjFhLThmYTYtNWI4YTE4MzJiMWRiXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg"),
];
