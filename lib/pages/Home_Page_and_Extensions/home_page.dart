import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/retweet_page.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/tweet_detail_pade.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/tweet_reply_page.dart';
import 'package:twitter_clone/pages/profile_page.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

int messageCount = 0;
int retweetCounter = 0;
String text =
    'From the moment we grow up, we hear you should do this, you sho-uldn"t do this. "Should" is how others expect us to live. When we choose "sholud", we choose to live our life for someone else. Easy tochoose "should" but there"sno fulfillment in it, or success.';
bool containerSize = false;
bool onFavorite = false;
int likeCount = 0;
bool textField = false;
List<String> images = [
  "assets/images/selcuk_bayraktar.jfif",
  "assets/images/elon_musk.jfif",
  "assets/images/bill_gates.jfif",
];

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    textField == false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        bodyItem(
            gmail: "@Selcuk",
            name: "Selçuk Bayraktar",
            tweetTime: "16 Jan",
            heshtek: "",
            text:
                "Baykar,birilerinin kirli siyasi ajandalarına malzeme olacak bir müessese değil.\n"
                "Buna izin vermedik, vermeyeceğiz!\n"
                "İdeal ve değerlerimizin asla taviz vermeden mücadelemizi sürdürecek;\n"
                "Alçakça atılmış iftira ve yalanlara karşı hakkımızı sonuna kadar savunacağız!",
            image: images[0]),
        divider(),
        bodyItem(
            gmail: "@elonmusk",
            name: "Elon Musk",
            tweetTime: "25 Jan",
            heshtek: "",
            text: "Use pinned Lists to improve your Twitter experience!\n"
                "1.Tap Lists on your profile page.\n"
                "2.Create list of accounts to follow.\n"
                "3.Tap pin icon.\n"
                "Thsi allows you to swipe left/right between For You, Following and Lists.",
            image: images[1]),
        divider(),
        bodyItem(
            gmail: "@BillGates",
            name: "Bill Gates",
            tweetTime: "20 Dec",
            heshtek: "",
            text:
                "I aam in awe of people who have dedicated their lives to making the world a more equitable place, and I feel lucky to be able to support their efforts.",
            image: images[2]),
      ],
    ));
  }

  GestureDetector bodyItem({
    required String gmail,
    required String name,
    required String tweetTime,
    required String heshtek,
    required String text,
    required String image,
  }) {
    var size = MediaQuery.of(context).size;
    TextEditingController controller = TextEditingController();
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TweetDetailPage(
                    image: image,
                    tweetTime: tweetTime,
                    gmail: gmail,
                    text: text,
                    heshtek: heshtek,
                    name: name,)));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(image),
              radius: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mainInformation(
                      gmail: gmail, name: name, tweetTime: tweetTime),
                  texd(text: text),
                  Iconz(
                      text: text,
                      tweetTime: tweetTime,
                      name: name,
                      heshtek: heshtek,
                      gmail: gmail)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Row mainInformation(
    {required String gmail, required String name, required String tweetTime}) {
  return Row(
    children: [
      Row(
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            gmail,
            style: const TextStyle(
                color: AppColor.darkGrey,
                fontWeight: FontWeight.w600,
                fontSize: 17),
          ),
          Text(
            " . $tweetTime",
            style: const TextStyle(
                color: AppColor.darkGrey,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(
          right: 10,
        ),
        child: Icon(
          Icons.keyboard_arrow_down,
          size: 30,
          color: AppColor.lightGrey,
        ),
      )
    ],
  );
}

Padding heshteg({required String heshtek}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Text(
      heshtek,
      style: const TextStyle(
          color: AppColor.primary, fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );
}

Padding texd({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Container(
      width: 290,
      height: 180,
      child: Text(
        text,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      ),
    ),
  );
}

class Iconz extends StatefulWidget {
  final String text;
  final String tweetTime;
  final String name;
  final String heshtek;
  final String gmail;
  const Iconz({
    super.key,
    required this.text,
    required this.tweetTime,
    required this.name,
    required this.heshtek,
    required this.gmail,
  });

  @override
  State<Iconz> createState() => _IconzState();
}

class _IconzState extends State<Iconz> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 20, left: 5),
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
                                text: text,
                                tweetTime: widget.tweetTime,
                                name: widget.name,
                                heshtek: widget.heshtek,
                                gmail: widget.gmail,
                              )));
                });
              },
              icon: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(
                  AppIcon.reply,
                  color: AppColor.darkGrey,
                ),
              )),
          Text(messageCount.toString(),
              style: const TextStyle(
                  color: AppColor.darkGrey,
                  fontSize: 19,
                  fontWeight: FontWeight.w500)),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  retweetCounter++;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RetweetPage(
                            image: "",
                            tweetTime: widget.tweetTime,
                            gmail: widget.gmail,
                            text: text,
                            heshtek: widget.heshtek,
                            name: widget.name)));
              },
              icon: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Icon(
                  AppIcon.retweet,
                  color: AppColor.darkGrey,
                ),
              )),
          Text(
            retweetCounter.toString(),
            style: const TextStyle(
                color: AppColor.darkGrey,
                fontSize: 19,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  if (onFavorite == false) {
                    likeCount++;
                    onFavorite = true;
                  } else {
                    likeCount--;
                    onFavorite = false;
                  }
                });
              },
              icon: onFavorite == false
                  ? const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        AppIcon.heartEmpty,
                        color: AppColor.darkGrey,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Icon(
                        AppIcon.heartFill,
                        color: TwitterColor.ceriseRed,
                      ),
                    )),
          onFavorite == false
              ? Text(
                  likeCount.toString(),
                  style: const TextStyle(
                      color: AppColor.darkGrey,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                )
              : Text(
                  likeCount.toString(),
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
          const SizedBox(
            width: 20,
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
}

Padding divider() {
  return const Padding(
    padding: EdgeInsets.only(top: 15, bottom: 5),
    child: Divider(
      height: 1.3,
      thickness: 0.9,
      color: Color(0xFFE0E0E0),
    ),
  );
}

AppBar home_appbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/İmage.jpeg"),
            radius: 25,
          ),
        )),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
          height: 40,
          width: 40,
          child: Image.asset("assets/images/icon-480.png")),
    ),
  );
}
