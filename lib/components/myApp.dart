import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/pages/home.dart';

import '../pages/Settings.dart';
import '../pages/add.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(key: UniqueKey(), title: 'Todolist'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedPage = 0; // user selected page, initial 0 index page"Home()"
  // will be dispto user

  final _pageOptions = [Add(), const Home(), const Settings()]; // Home(),  Fav(),Search(), Profile() 4 different page where user can navigate.


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _pageOptions[selectedPage],
        bottomNavigationBar: ConvexAppBar(

          items: const [
            TabItem(icon: Icons.add_box, title: 'Добавить'),
            TabItem(icon: Icons.home, title: 'Главная'),
            TabItem(icon: Icons.person, title: 'Настройки'),
          ],
          initialActiveIndex: 0,//optional, default as 0
          onTap: (int i ){
            setState(() {
              selectedPage = i;
              print(i);
            });
          },
        ),// This trailing comma makes auto-formatting nicer for build
    );
  }
}