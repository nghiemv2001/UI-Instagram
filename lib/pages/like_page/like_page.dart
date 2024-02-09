import 'package:design_ui_instagram/pages/like_page/modals/itemNotification.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/app_bar_custom.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/bottom_bar.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/follow_required.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/list_view_custom.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/list_view_month.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/list_view_today.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/list_view_week.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  List<ItemNotification> notifications = [
    ItemNotification(
      images: ["assets/images/like_page/Image1.jpg"],
      names: ["karennne"],
      message: 'liked your photo. 1h',
      image: "assets/images/like_page/Rectangle.jpg",
      status: 0,
      time: DateTime(2024, 2, 9, 2, 35),
    ),
    ItemNotification(
      images: [
        "assets/images/like_page/Image2.jpg",
        "assets/images/like_page/Image8.jpg",
      ],
      names: ["kiero_d", "zackjohn"],
      message: 'and 26 others liked your photo. 3h',
      image: "assets/images/like_page/Rectangle1.jpg",
      status: 0,
      time: DateTime(2024, 2, 8, 2, 35),
    ),
    ItemNotification(
      images: [
        "assets/images/like_page/Image3.jpg",
      ],
      names: ["craig_love"],
      message: 'mentioned you in a comment: @jacob_w exactly..',
      image: "assets/images/like_page/Rectangle2.jpg",
      status: 0,
      time: DateTime(2024, 2, 7, 2, 35),
    ),
    ItemNotification(
      images: [
        "assets/images/like_page/Image4.jpg",
      ],
      names: ["martini_rond"],
      message: 'started following you. 3d',
      image: "assets/images/like_page/Rectangle2.jpg",
      status: 1,
      time: DateTime(2024, 2, 7, 2, 35),
    ),
    ItemNotification(
      images: [
        "assets/images/like_page/Image5.jpg",
      ],
      names: ["maxjacobson"],
      message: 'started following you. 3d',
      image: "assets/images/like_page/Rectangle2.jpg",
      status: 1,
      time: DateTime(2024, 2, 7, 2, 35),
    ),
    ItemNotification(
      images: [
        "assets/images/like_page/Image6.jpg",
      ],
      names: ["mis_potter"],
      message: 'started following you. 3d',
      image: "assets/images/like_page/Rectangle2.jpg",
      status: 2,
      time: DateTime(2024, 2, 7, 2, 35),
    ),
    ItemNotification(
      images: [
        "assets/images/like_page/Image5.jpg",
      ],
      names: ["maxjacobson"],
      message: 'started following you. 3d',
      image: "assets/images/like_page/Rectangle2.jpg",
      status: 1,
      time: DateTime(2024, 2, 6, 2, 35),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: App_Bar_Widget(
      //   stateAppBar: _StateAppBar,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                App_Bar_Custom(),
                Follow_Required(),
                ListView_Notification(
                  notifications: notifications,
                ),
                ListView_Notification_Today(
                  notifications: notifications,
                ),
                ListView_Notification_Week(notifications: notifications),
                ListView_Notification_Month(notifications: notifications),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Bottom_Bar(),
    );
  }
}