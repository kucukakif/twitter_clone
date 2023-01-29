import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class ConversationInfoPage extends StatefulWidget {
  final String name;
  final String heshtek;
  const ConversationInfoPage(
      {super.key, required this.name, required this.heshtek});

  @override
  State<ConversationInfoPage> createState() => _ConversationInfoPageState();
}

class _ConversationInfoPageState extends State<ConversationInfoPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: const AppBarLeadingIcon(),
        title: const Text(
          "Conversation information",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 35),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            _informations(),
            Container(
              width: double.infinity,
              height: 55,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              color: AppColor.extraLightGrey,
              child: const Text(
                "Notifications",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: AppColor.darkGrey),
              ),
            ),
            Container(
              width: double.infinity,
              height: 55,
              padding: const EdgeInsets.only(left: 15, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mute conversation",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                  ),
                  Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      })
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 15,
              color: AppColor.extraLightGrey,
            ),
            _feature(text: "Block ${widget.heshtek}", onTap: () {}),
            _feature(text: "Report ${widget.heshtek}", onTap: () {}),
            _feature(
                text: "Delete conversation", onTap: () {}, color: Colors.red)
          ],
        ),
      ),
    );
  }

  GestureDetector _feature(
      {required String text,
      required VoidCallback onTap,
      Color color = AppColor.primary}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        padding: const EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
              color: color, fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Container _informations() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/İmage.jpeg"),
            radius: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              widget.name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            widget.heshtek,
            style: const TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
