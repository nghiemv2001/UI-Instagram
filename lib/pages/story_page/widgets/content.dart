import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/story/Rectangle.png",
                width: double.infinity,
                fit: BoxFit.fitWidth,
                height: 657,
              ),
              Positioned(
                left: 8,
                top: 8,
                child:
                    SvgPicture.asset("assets/icons/story/Stories Timeline.svg"),
              ),
              Positioned(
                left: 12,
                top: 18,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/story/User Picture 1.png",
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "craig_love",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "4h",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFFFFFFFF).withOpacity(0.4),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 346,
                top: 25,
                child: SvgPicture.asset(
                  "assets/icons/story/Close Icon.svg",
                  width: 18,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 13,
                top: 673,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(4),
                      width: 271,
                      height: 43,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFFFFFFF).withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 34,
                            width: 34,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF).withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icons/story/Shape.svg",
                                width: 20,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Text(
                            "Send Message",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    SvgPicture.asset(
                      "assets/icons/story/Messanger.svg",
                      width: 24,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    SvgPicture.asset(
                      "assets/icons/story/More.svg",
                      width: 14,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
