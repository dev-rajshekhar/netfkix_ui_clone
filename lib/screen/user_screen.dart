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
                  const SizedBox(
                    height: 60,
                  ),
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
                  Container(
                    child: GridView.builder(

                        padding: EdgeInsets.only(left: 60, right: 60,bottom: 60 ),
                        shrinkWrap: true,
                        itemCount: userList.length,
                        primary: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                          mainAxisSpacing: 2,
                         ),
                        itemBuilder: (context, index) {
                          return WhoIsWatchingItem(
                              userImage: userList[index].imageUrl,
                              userName: userList[index].name);
                        }),
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
