import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
class MyListButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const MyListButton({Key key, @required this.title,@required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon,color: AppColors.white,),
        Text(title,style: TextStyle(color: AppColors.white,fontSize:12, fontWeight: FontWeight.w500),)
      ],
    );
  }
}
