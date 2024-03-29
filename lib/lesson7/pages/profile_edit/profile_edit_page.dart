import 'package:design_ui_instagram/lesson7/pages/profile_edit/widgets/app_bar.dart';
import 'package:design_ui_instagram/lesson7/pages/profile_edit/widgets/container_infor.dart';
import 'package:design_ui_instagram/lesson7/pages/profile_edit/widgets/container_infor_private.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const AppBarProfileEdit(),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 18.5,
                ),
                SizedBox(
                  height: 95,
                  width: 95,
                  child: Image.asset(
                    "assets/images/lesson7/Oval.jpg",
                    width: 92,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 12.5,
                ),
                const Text(
                  "Change Profile Photo",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3897F0),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                const ContainerInfor(),
                const InforPrivateContainer(),
              ],
            ),
          ),
        ),
      );
}
