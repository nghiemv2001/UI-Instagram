import 'package:flutter/material.dart';

class BottomBarLoginPage extends StatelessWidget implements PreferredSize {
  const BottomBarLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 0.8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instagram от Facebook",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000).withOpacity(0.4),
              ),
            ),
          ],
        ),
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
