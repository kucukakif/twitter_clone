import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int veri = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          veri == 0
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50, bottom: 15),
                      child: Text(
                        "No Notification avaliable yet",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            fontFamily: "HelveticaNeue700"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                      child: Text(
                        "When new notification found, they'll show up here.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColor.lightGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _divider(),
                    Container(
                      width: double.infinity,
                      height: 180,
                      padding: const EdgeInsets.only(left: 25),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  AppIcon.heartFill,
                                  color: TwitterColor.ceriseRed,
                                  size: 28,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                          "assets/images/İmage.jpeg"),
                                      radius: 23,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 55, top: 5),
                            child: Text(
                              "1 people like your Tweet",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 55, top: 5),
                            child: Text(
                              "cm sw the fist time since I was taken to ensure everything is ok for the first to be a good morning to see if you want me know when I will refer the...",
                              style: TextStyle(
                                fontSize: 18.5,
                                color: AppColor.lightGrey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }

  Divider _divider() {
    return const Divider(
      height: 0.6,
      thickness: 0.8,
      color: Color(0xFFE0E0E0),
    );
  }
}

AppBar notification_appbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: const Padding(
      padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage("assets/images/İmage.jpeg"),
        radius: 25,
      ),
    ),
    title: const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        "Notifications",
        style: TextStyle(
            fontFamily: "HelveticaNeue500",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NotificationSettings()));
          },
          icon: const Padding(
            padding: EdgeInsets.only(right: 10, bottom: 5),
            child: Icon(
              AppIcon.settings,
              color: AppColor.primary,
              size: 30,
            ),
          ))
    ],
  );
}
