import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/home_page.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/tweet_create_page.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int followersCount = 0;
  int followingCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _appBar_and_image(context),
          UserInformation(
              followersCount: followersCount, followingCount: followingCount),
          body_item_divider(),
          for (int i = 0; i < 3; i++) bodyItem(context),
          body_item_divider()
        ],
      ),
      floatingActionButton: _floatingActionButton(context),
    );
  }

  Container _appBar_and_image(BuildContext context) {
    return Container(
      height: 195,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                "https://pbs.twimg.com/profile_banners/457684585/1510495215/1500x500",
              ),
              alignment: Alignment.topCenter,
              fit: BoxFit.contain)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 25,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 35, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45)),
                  padding: const EdgeInsets.all(5),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/İmage.jpeg"),
                    radius: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 63),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        side:
                            BorderSide(color: TwitterColor.paleSky, width: 1)),
                    child: const Text(
                      " Edit Profile ",
                      style: TextStyle(
                          color: Color(0xFF424242),
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const TweetCreatePage(
                      gmail: "gmail",
                    )));
      },
      backgroundColor: AppColor.primary,
      child: const Icon(AppIcon.fabTweet),
    );
  }
}

Container bodyItem(BuildContext context) {
  var size = MediaQuery.of(context).size;
  TextEditingController controller = TextEditingController();
  return Container(
    margin: const EdgeInsets.only(left: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage("assets/images/İmage.jpeg"),
          radius: 23,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              mainInformation(
                  gmail: "gmail", name: "name", tweetTime: "tweetTime"),
              texd(text: text),
              heshtej(heshtek: "heshtek"),
              Iconz(
                  text: text,
                  tweetTime: "tweetTime",
                  name: "name",
                  heshtek: "heshtek",
                  gmail: "gmail")
            ],
          ),
        )
      ],
    ),
  );
}

Text heshtej({required String heshtek}) {
  return Text(
    heshtek,
    style: const TextStyle(
        color: AppColor.primary, fontSize: 16, fontWeight: FontWeight.w500),
  );
}

Padding body_item_divider() {
  return const Padding(
    padding: EdgeInsets.only(top: 5, bottom: 5),
    child: Divider(
      height: 1.3,
      thickness: 0.9,
      color: Color(0xFFD6D6D6),
    ),
  );
}

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
    required this.followersCount,
    required this.followingCount,
  }) : super(key: key);

  final int followersCount;
  final int followingCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: const [
                Text(
                  "Akif Emre",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Icon(
                    AppIcon.blueTick,
                    color: AppColor.primary,
                    size: 15,
                  ),
                )
              ],
            ),
          ),
          const Text(
            "@akifemrekucuk",
            style: TextStyle(
                color: AppColor.darkGrey,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 25),
            child: Text(
              "Some random bio description can be added here. Bla bla and bla bla texts and again bla bla bla.",
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: const [
                Icon(
                  AppIcon.locationPin,
                  size: 18,
                  color: AppColor.darkGrey,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 8),
                  child: Text(
                    "Kocaeli Turkey",
                    style: TextStyle(fontSize: 17, color: AppColor.darkGrey),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: const [
                Icon(
                  AppIcon.calender,
                  size: 18,
                  color: AppColor.darkGrey,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 8),
                  child: Text(
                    "joined March 2020",
                    style: TextStyle(fontSize: 17, color: AppColor.darkGrey),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text(
                  followersCount.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 40, bottom: 2),
                  child: Text(
                    "Followers",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  followingCount.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 30, bottom: 2),
                  child: Text(
                    "Following",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
