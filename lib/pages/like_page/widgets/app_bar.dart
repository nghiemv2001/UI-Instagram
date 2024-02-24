import 'package:flutter/material.dart';

class App_Bar_Widget extends StatelessWidget implements PreferredSize {
  const App_Bar_Widget({required stateAppBar, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: const Color(0xFFA6A6AA).withOpacity(0.33),
        elevation: 0,
        leadingWidth: 36,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              children: [
                Container(
                  width: 180,
                  height: 44,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Folowing",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 44,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Following",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
