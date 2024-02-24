import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarPage extends StatelessWidget implements PreferredSize {
  const AppBarPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "assets/icons/lesson8/Private Icon.svg",
                width: 9,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                "jacob_w",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xFF262626,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                "assets/icons/lesson7/Accounts List.svg",
                width: 11,
                height: 7,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            width: 70,
          ),
          ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFAFAFA),
              elevation: 0,
            ),
            child: SvgPicture.asset(
              'assets/icons/lesson8/Menu.svg',
              width: 21,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          )
        ],
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
