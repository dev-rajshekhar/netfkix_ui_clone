import 'package:flutter/cupertino.dart';

import '../assets.dart';

class WhoIsWatching {
  final String name;
  final String imageUrl;
  final String imageLogoUrl;

  const WhoIsWatching({
    @required this.name,
    @required this.imageUrl,
    this.imageLogoUrl,
  });
}

final List<WhoIsWatching> whoIsWatchingList = const [
  WhoIsWatching(
    name: 'Raj',
    imageUrl: Assets.user4,
  ),
  WhoIsWatching(
    name: 'Nirmal',
    imageUrl: Assets.user2,
  ),
  WhoIsWatching(
    name: 'D-Ansari',
    imageUrl: Assets.user3,
  ),
  WhoIsWatching(
    name: 'Other',
    imageUrl: Assets.user1,
  ),
  WhoIsWatching(
    name: 'Add',
    imageUrl: Assets.addUser,
  ),
];
