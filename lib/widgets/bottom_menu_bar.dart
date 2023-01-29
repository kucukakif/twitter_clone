import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/home_page.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/tweet_create_page.dart';
import 'package:twitter_clone/pages/Message_Page_Extensions/message_page.dart';
import 'package:twitter_clone/pages/Message_Page_Extensions/new_message_page.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notification_page.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_page.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/settings_and_privacy_page.dart';
import 'package:twitter_clone/pages/profile_page.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({
    super.key,
  });

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int currentIndex = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [
      const HomePage(),
      const SearchPage(),
      const NotificationPage(),
      const MessagePage(),
    ];
    List _appBar = [
      home_appbar(context),
      search_appbar(context),
      notification_appbar(context),
      message_appbar(context),
    ];
    return Scaffold(
      drawer: _selectedIndex == 0
          ? Drawer(
              width: MediaQuery.of(context).size.width - 100,
              backgroundColor: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 740,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/İmage.jpeg"),
                        radius: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Akif Emre",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, left: 5),
                          child: Image.asset(
                            "assets/images/mavi_tik.png",
                            width: 18,
                            height: 18,
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                            color: AppColor.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "@akifemrekucuk",
                      style: TextStyle(
                          color: AppColor.darkGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 780,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: const [
                        Text(
                          "1",
                          style: TextStyle(color: Colors.black87, fontSize: 22),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 10),
                          child: Text(
                            "Followers",
                            style: TextStyle(
                                color: AppColor.darkGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 19),
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(color: Colors.black87, fontSize: 22),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 10),
                          child: Text(
                            "Following",
                            style: TextStyle(
                                color: AppColor.darkGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 19),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.7,
                      height: 1,
                    ),
                  ),
                  drawer_item(
                      text: "Profile",
                      icon: AppIcon.profile,
                      color: Colors.black),
                  drawer_item(
                      text: "Lists",
                      icon: AppIcon.lists,
                      color: Colors.grey.shade400),
                  drawer_item(
                      text: "Bookamrks",
                      icon: AppIcon.bookmark,
                      color: Colors.grey.shade400),
                  drawer_item(
                      text: "Moments",
                      icon: AppIcon.moments,
                      color: Colors.grey.shade400),
                  drawer_item(
                      text: "Twitter ads",
                      icon: AppIcon.twitterAds,
                      color: Colors.grey.shade400),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.3,
                      height: 1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SettingAndPrivacy(gmail: "gmail")));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Settings and privacy",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: Text(
                      "Help Center",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.7,
                      height: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 765,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.7,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/bulb.png",
                          width: 30,
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Image.asset(
                            "assets/images/qr.png",
                            width: 30,
                            height: 30,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          : null,
      floatingActionButton: _selectedIndex == 0
          ? _floatingActionButton(context)
          : _selectedIndex == 3
              ? _messageFloatingActionButton(context)
              : null,
      appBar: _appBar[_selectedIndex],
      body: pages[_selectedIndex],
      backgroundColor: _selectedIndex == 2 ? AppColor.extraLightGrey : null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                AppIcon.home,
                color: Colors.black,
                size: 25,
              ),
              activeIcon: Icon(
                AppIcon.homeFill,
                color: AppColor.primary,
                size: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                AppIcon.search,
                color: Colors.black,
                size: 25,
              ),
              activeIcon: Icon(
                AppIcon.search,
                color: AppColor.primary,
                size: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                AppIcon.notification,
                color: Colors.black,
                size: 25,
              ),
              activeIcon: Icon(
                AppIcon.notificationFill,
                color: AppColor.primary,
                size: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                AppIcon.messageEmpty,
                color: Colors.black,
                size: 25,
              ),
              activeIcon: Icon(
                AppIcon.messageFill,
                color: AppColor.primary,
                size: 25,
              ),
              label: ""),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Container drawer_item(
      {required String text, required IconData icon, required Color color}) {
    return Container(
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey.shade400,
              size: 37,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 3),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            )
          ],
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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

  FloatingActionButton _messageFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NewMessage()));
      },
      backgroundColor: AppColor.primary,
      child: const Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Icon(
          AppIcon.newMessage,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
