import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/routes.dart';

import 'app_style.dart';

void main() {
  runApp(MyApp(
    appRoutes: AppRoutes(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, this.appRoutes}) : super(key: key);
  final AppRoutes appRoutes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoutes.onGenerateRoute,
      theme: ThemeData(
        textTheme: TextTheme(
            headline1: titleStyle,
            headline4: contentStyle,
            headline2: bodyStyle,
            subtitle2: bodySmallStyle,
            caption: conetentSmall,
            headline6: smallContent),
        primarySwatch: Colors.red,
      ),
    );
  }
}
