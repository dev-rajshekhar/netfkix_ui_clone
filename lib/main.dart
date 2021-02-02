import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/routes.dart';

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
        primarySwatch: Colors.red,
      ),
    );
  }
}
