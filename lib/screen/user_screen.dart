import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/data/who_is_watching.dart';
import 'package:netflix_ui_cloe/screen/widgets/WhoIsWatchingWidget.dart';
import 'package:netflix_ui_cloe/screen/widgets/custom_header.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final userList = whoIsWatchingList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBg,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CustomAppBar(),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Who's Watching?",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Table(
                    children: [
                      TableRow(children: [
                        WhoIsWatchingItem(
                            userImage: userList[0].imageUrl,
                            userName: userList[0].name),
                        WhoIsWatchingItem(
                            userImage: userList[1].imageUrl,
                            userName: userList[1].name),
                      ]),
                      TableRow(children: [
                        WhoIsWatchingItem(
                            userImage: userList[2].imageUrl,
                            userName: userList[2].name),
                        WhoIsWatchingItem(
                            userImage: userList[3].imageUrl,
                            userName: userList[3].name),
                      ]),
                      TableRow(children: [
                        WhoIsWatchingItem(
                            userImage: userList[4].imageUrl,
                            userName: userList[4].name),
                        Container()
                      ])
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
