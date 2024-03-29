import 'package:design_ui_instagram/lesson5/home_page_instagram/app_bar_home.dart';
import 'package:design_ui_instagram/lesson5/home_page_instagram/bottom_bar.dart';
import 'package:design_ui_instagram/lesson5/home_page_instagram/bottom_page_home.dart';
import 'package:design_ui_instagram/lesson5/home_page_instagram/listCardView_home.dart';
import 'package:design_ui_instagram/lesson5/home_page_instagram/poster_home.dart';
import 'package:flutter/material.dart';

class HomePageInstagram extends StatefulWidget {
  const HomePageInstagram({Key? key}) : super(key: key);

  @override
  State<HomePageInstagram> createState() => _HomePageInstagramState();
}

class _HomePageInstagramState extends State<HomePageInstagram> {
  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: AppBarHome(),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              ListCardItem(),
              Poster(),
              BottomPage(),
              BottomBar()
            ],
          ),
        ),
      );
}
