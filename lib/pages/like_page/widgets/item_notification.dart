import 'package:design_ui_instagram/pages/like_page/modals/itemNotification.dart';
import 'package:flutter/material.dart';

class ItemNotification_Widget extends StatelessWidget {
  const ItemNotification_Widget({Key? key, required this.itemNotification})
      : super(key: key);
  final ItemNotification itemNotification;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (itemNotification.images.length == 1)
              ? Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "${itemNotification.images[0]}",
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: 32,
                          width: 32,
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
                              "${itemNotification.images[1]}",
                              width: 32,
                              height: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          height: 32,
                          width: 32,
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
                              "${itemNotification.images[0]}",
                              width: 32,
                              height: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              width: 230,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    (itemNotification.names.length == 1)
                        ? TextSpan(
                            text: "${itemNotification.names[0]}",
                            style: TextStyle(
                              color: Color(0xFF262626),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        : TextSpan(
                            text:
                                "${itemNotification.names[0]}, ${itemNotification.names[1]}",
                            style: TextStyle(
                              color: Color(0xFF262626),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                    TextSpan(
                      text: " ${itemNotification.message}",
                      style: TextStyle(
                        color: Color(0xFF000000).withOpacity(0.4),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          (itemNotification.status == 0)
              ? Image.asset(
                  "${itemNotification.image}",
                )
              : (itemNotification.status == 1)
                  ? Container(
                      width: 60,
                      height: 28,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      child: Center(child: Text("Message")),
                    )
                  : Container(
                      width: 60,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
        ],
      ),
    );
  }
}