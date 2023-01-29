import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class TweetLikedUsersPage extends StatefulWidget {
  const TweetLikedUsersPage({super.key});

  @override
  State<TweetLikedUsersPage> createState() => _TweetLikedUsersPageState();
}

class _TweetLikedUsersPageState extends State<TweetLikedUsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingIcon(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Liked by",
          style: style(),
        ),
      ),
      body: Container(
        child: ListView(
          children: const [
            LikedByItem(),
            LikedByItem(),
            LikedByItem(),
            LikedByItem(),
          ],
        ),
      ),
    );
  }
}

class LikedByItem extends StatefulWidget {
  const LikedByItem({super.key});

  @override
  State<LikedByItem> createState() => _LikedByItemState();
}

class _LikedByItemState extends State<LikedByItem> {
  bool isFollow = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/İmage.jpeg"),
            radius: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Akif Emre",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, left: 4),
                        child: Image.asset(
                          "assets/images/mavi_tik.png",
                          width: 15,
                          height: 15,
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  "@akifemrekucuk",
                  style: TextStyle(
                      color: AppColor.darkGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(
            width: isFollow == false ? 67 : 52,
          ),
          SizedBox(
            width: isFollow == false ? 105 : 120,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isFollow == false) {
                    isFollow = true;
                  } else {
                    isFollow = false;
                  }
                });
              },
              style: isFollow == false
                  ? ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: AppColor.primary),
                          borderRadius: BorderRadius.circular(30)))
                  : ElevatedButton.styleFrom(
                      primary: AppColor.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
              child: isFollow == false
                  ? Text(
                      "Follow",
                      style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  : Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
