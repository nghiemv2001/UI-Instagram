import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 45,
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Image.asset(
              'assets/images/lesson8/Tab 1.png',
              width: 22,
              fit: BoxFit.fitWidth,
            )),
            Expanded(
                child: Image.asset(
              "assets/images/lesson8/image_tab2.png",
              width: 22,
              fit: BoxFit.fitWidth,
            )),
            Expanded(
                child: Image.asset(
              "assets/images/lesson8/image_tab3.png",
              width: 22,
              fit: BoxFit.fitWidth,
            )),
            Expanded(
                child: Image.asset(
              "assets/images/like_page/Icon.png",
              width: 22,
              fit: BoxFit.none,
            )),
            Expanded(
              child: Container(
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFC7C7CC),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/lesson8/Oval.jpg',
                        width: 27,
                        height: 27,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
