import 'package:flutter/material.dart';

class AppBarProfileEdit extends StatelessWidget implements PreferredSize {
  const AppBarProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFA6A6AA).withOpacity(0.33),
      elevation: 0,
      centerTitle: true,
      actions: [
        SizedBox(
          height: 12,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Cancel",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626)),
          ),
        ),
        SizedBox(
          width: 75,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Edit Profile",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626)),
          ),
        ),
        SizedBox(
          width: 81,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Done",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(
                0xFF3897F0,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 11,
        )
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
