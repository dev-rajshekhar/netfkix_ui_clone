import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';

class WhoIsWatchingItem extends StatelessWidget {
  final String userName;
  final userImage;

  const WhoIsWatchingItem(
      {Key key, @required this.userName, @required this.userImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(userImage),
            height: userName == "Add" ? 60 : 100,
            color: userName == "Add" ? Colors.white : null,
            width: userName == "Add" ? 40 : 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              userName,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
