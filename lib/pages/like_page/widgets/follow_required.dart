import 'package:flutter/material.dart';

class Follow_Required extends StatelessWidget {
  const Follow_Required({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0.5),
        ),
      ),
      height: 48,
      child: const Padding(
        padding: EdgeInsets.only(
          left: 16,
          top: 14,
          bottom: 14,
        ),
        child: Text(
          "Follow Requests",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFF262626),
          ),
        ),
      ),
    );
  }
}