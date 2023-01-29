import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class PrivacyAndSafety extends StatefulWidget {
  final String gmail;
  const PrivacyAndSafety({super.key, required this.gmail});

  @override
  State<PrivacyAndSafety> createState() => _PrivacyAndSafetyState();
}

class _PrivacyAndSafetyState extends State<PrivacyAndSafety> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingIcon(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy and safety",
              style: style(),
            ),
            Text(
              widget.gmail,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColor.lightGrey),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            settings_titles("Tweets"),
            provacy_and_safety_item(
                text: "Protect your tweet",
                subTitle:
                    "Only Current flowwers and people you approve in future will be able to seer your tweets.",
                onTap: isSwitched1,
                height: 120),
            listItem(
                onTap: () {},
                title: "Photo tagging",
                subTitle: "Anyone can tag you"),
            setting_title_2("Direct Message"),
            listItem(onTap: () {}, title: "Direct Message"),
            setting_title_2("Live Video"),
            provacy_and_safety_item(
                text: "Connect to Periscope",
                subTitle:
                    "If selected you can go live and command on Prescope broadcast, and people will be able to see when you're watching. if this setting is off, people won't be able comment or broadcast live.",
                onTap: isSwitched2,
                height: 140),
            setting_title_2("Discoverability and contacts"),
            listItem(onTap: () {}, title: "Discoverability and contacts"),
            settings_text(
                text:
                    "Learn more about how this data is used to connect you with people"),
            setting_title_2("Safety"),
            safety_item(
                onTap: isSwitched3,
                text: "Display media that may contain sensitive content"),
            safety_item(
                onTap: isSwitched4,
                text:
                    "Mark media you tweet as containing material that may be sensitive"),
            listItem(onTap: () {}, title: "Blocked Accounts"),
            listItem(onTap: () {}, title: "Muted Accounts"),
            listItem(onTap: () {}, title: "Muted Words"),
            setting_title_2("Location"),
            listItem(onTap: () {}, title: "Precise location"),
            settings_text(
                text: "if enabled, Twitter will collect, store, and use your ")
          ],
        ),
      ),
    );
  }

  Container safety_item({required bool onTap, required String text}) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: const EdgeInsets.only(left: 15, right: 5),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 300,
            height: 70,
            margin: const EdgeInsets.only(right: 20),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          Switch(
              value: onTap,
              onChanged: (value) {
                setState(() {
                  onTap = value;
                });
              })
        ],
      ),
    );
  }

  Container provacy_and_safety_item(
      {required String text,
      required String subTitle,
      required bool onTap,
      double height = 100}) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.only(left: 15, right: 5, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 18.5,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          Row(
            children: [
              Container(
                width: 295,
                margin: const EdgeInsets.only(right: 25),
                child: Text(
                  subTitle,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.lightGrey),
                ),
              ),
              Switch(
                  value: onTap,
                  onChanged: (value) {
                    setState(() {
                      onTap = value;
                    });
                  })
            ],
          )
        ],
      ),
    );
  }
}

Container settings_text({required String text}) {
  return Container(
    width: double.infinity,
    height: 65,
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Text(
      text,
      style: TextStyle(
          color: AppColor.darkGrey.withOpacity(0.8),
          fontSize: 16,
          fontWeight: FontWeight.w500),
    ),
  );
}
