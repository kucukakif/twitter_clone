import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/light_color.dart';

AppBar MyAppBar(BuildContext context,String text,Color color) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primary,
            size: 26,
          )),
      centerTitle: true,
      title: Text(
        text,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      backgroundColor: color,
      elevation: 0,
    );
  }