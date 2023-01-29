import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.extraLightGrey,
        child: ListView(
          children: const [
            MessageUser(
                name: "Ronaldo",
                gmail: "@ronaldo",
                blueTick: true,
                image: "assets/images/ronaldo.jfif"),
            MessageUser(
                name: "Messi",
                gmail: "@messi",
                blueTick: true,
                image: "assets/images/messi.jfif"),
            MessageUser(
                name: "Neymar",
                gmail: "@neymar",
                blueTick: true,
                image: "assets/images/neymar.jfif"),
            MessageUser(
                name: "Arda Güler",
                gmail: "@ardaguler",
                blueTick: true,
                image: "assets/images/arda_guler.jfif")
          ],
        ));
  }
}

class MessageUser extends StatefulWidget {
  final String name;
  final String gmail;
  final bool blueTick;
  final String image;
  const MessageUser(
      {super.key,
      required this.name,
      required this.gmail,
      required this.blueTick,
      required this.image});

  @override
  State<MessageUser> createState() => _MessageUserState();
}

class _MessageUserState extends State<MessageUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 77.5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(widget.image),
                    radius: 26,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        widget.gmail,
                        style: const TextStyle(
                            color: AppColor.lightGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Divider(
              height: 1.3,
              thickness: 0.8,
              color: Color(0xFFE0E0E0),
            ),
          ),
        ],
      ),
    );
  }
}

AppBar message_appbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: const Padding(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage("assets/images/İmage.jpeg"),
        radius: 25,
      ),
    ),
    title: const Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Text(
        "Messages",
        style: TextStyle(
            fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Padding(
            padding: EdgeInsets.only(bottom: 10, right: 10),
            child: Icon(
              AppIcon.settings,
              size: 29,
              color: AppColor.primary,
            ),
          ))
    ],
  );
}
