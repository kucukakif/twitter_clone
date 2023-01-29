import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/home_page.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/retweet_page.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/tweet_create_page.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/tweet_reply_page.dart';
import 'package:twitter_clone/pages/tweet_like_users_page.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class TweetDetailPage extends StatefulWidget {
  final String text;
  final String name;
  final String heshtek;
  final String gmail;
  final String tweetTime;
  final String image;
  int likeCount;
  TweetDetailPage(
      {super.key,
      required this.image,
      required this.tweetTime,
      required this.gmail,
      required this.text,
      required this.heshtek,
      required this.name,
      this.likeCount = 0,});

  @override
  State<TweetDetailPage> createState() => _TweetDetailPageState();
}

int messageCount = 0;
int retweetCounter = 0;

class _TweetDetailPageState extends State<TweetDetailPage> {
  bool onPress = false;

  bool onFavorite = false;
  int likeCount = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    likeCount = widget.likeCount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TweetCreatePage(
                        gmail: "gmail",
                      )));
        },
        backgroundColor: AppColor.primary,
        child: Icon(AppIcon.fabTweet),
      ),
      appBar: _appBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_userInformation(), _bottomSheet(context)],
            ),
          ),
          _contents(),
          _divider(),
          _smallData(),
          _divider(),
          _needRow(context),
          Container(
            width: double.infinity,
            height: 7,
            color: AppColor.extraLightGrey,
          )
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 25,
          )),
      title: const Text(
        "Thread",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }

  Row _userInformation() {
    return Row(
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(widget.image),
            radius: 23,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w600),
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
              Text(
                widget.gmail,
                style: const TextStyle(
                    color: AppColor.darkGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _contents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
          child: Text(
            widget.text,
            style: const TextStyle(fontSize: 20.5, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text(
            widget.heshtek,
            style: const TextStyle(
                color: AppColor.primary,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 15),
          child: Row(
            children: [
              Text(
                "${widget.tweetTime}",
                style: const TextStyle(
                    color: AppColor.darkGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Twitter for Android",
                  style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 17,
                      fontFamily: "HelveticaNeue600"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding _bottomSheet(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 5),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.white,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              )),
              barrierColor: Colors.black45,
              context: context,
              builder: (context) => SizedBox(
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Wrap(
                        children: [
                          Center(
                            child: Container(
                              width: 45,
                              height: 6,
                              margin: const EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: AppColor.extraLightGrey,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          _bottomSheetIem(
                              iconData: AppIcon.link,
                              text: "Copy link to tweet"),
                          _bottomSheetIem(
                              iconData: AppIcon.unFollow,
                              text: "Pin to profile"),
                          _bottomSheetIem(
                              iconData: AppIcon.delete, text: "Delete Tweet"),
                          _bottomSheetIem(
                              iconData: AppIcon.mute,
                              text: "Mute this convertion"),
                          _bottomSheetIem(
                              iconData: AppIcon.viewHidden,
                              text: "View hidden replies"),
                          _bottomSheetIem(
                              iconData: AppIcon.block,
                              text: "Block @${widget.heshtek}"),
                          _bottomSheetIem(
                              iconData: AppIcon.report, text: "Report Tweet")
                        ],
                      ),
                    ),
                  ));
        },
        icon: const Icon(
          Icons.keyboard_arrow_down,
          size: 30,
          color: AppColor.lightGrey,
        ),
      ),
    );
  }

  Padding _smallData() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 15),
      child: Row(
        children: [
          Text(
            messageCount.toString(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 23),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 30, bottom: 2),
            child: Text(
              "comments",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            likeCount.toString(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 23),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TweetLikedUsersPage()));
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 15, bottom: 2),
              child: Text(
                "Likes",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _needRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 40, left: 45, bottom: 5),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  messageCount++;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReplayTweetPage(
                                text: widget.text,
                                tweetTime: widget.tweetTime,
                                name: widget.name,
                                heshtek: widget.heshtek,
                                gmail: widget.gmail,
                              )));
                });
              },
              icon: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Icon(
                  Icons.messenger_outline,
                  color: AppColor.darkGrey,
                ),
              )),
          const SizedBox(
            width: 40,
          ),
          IconButton(
              onPressed: () {
                retweetCounter++;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RetweetPage(
                            image: widget.image,
                            tweetTime: widget.tweetTime,
                            gmail: widget.gmail,
                            text: widget.text,
                            heshtek: widget.heshtek,
                            name: widget.name)));
              },
              icon: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(AppIcon.retweet),
              )),
          const SizedBox(
            width: 40,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  if (onFavorite == false) {
                    onFavorite = true;
                    likeCount++;
                  } else {
                    onFavorite = false;
                    likeCount--;
                  }
                });
              },
              icon: onFavorite == false
                  ? const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(AppIcon.heartEmpty),
                    )
                  : const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        AppIcon.heartFill,
                        color: Colors.red,
                      ),
                    )),
          const SizedBox(
            width: 40,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: AppColor.darkGrey,
              ))
        ],
      ),
    );
  }

  Padding _bottomSheetIem({required IconData iconData, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 5),
          child: Icon(
            iconData,
            color: onPress == false ? null : Colors.black,
            size: 25,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
              color: onPress == true ? Colors.black : AppColor.lightGrey,
              fontSize: 20,
              fontFamily: "HelveticaNeue600"),
        ),
        onTap: () {
          if (onPress == false) {
            onPress = true;
          } else {
            onPress = false;
          }
        },
      ),
    );
  }

  Padding _divider() {
    return const Padding(
      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Divider(
        height: 1.1,
        thickness: 0.9,
        color: Color(0xFFE0E0E0),
      ),
    );
  }
}
