import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';

class PlayPauseButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const PlayPauseButton({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: AppColors.white,
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.textGrey,
            ),
            Text(
              title,
              style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        onPressed: () {});
  }
}
