import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';

class AboutTwitter extends StatefulWidget {
  const AboutTwitter({super.key});

  @override
  State<AboutTwitter> createState() => _AboutTwitterState();
}

class _AboutTwitterState extends State<AboutTwitter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingIcon(),
        backgroundColor: Colors.white,
        title: Text(
          "About Twitter",
          style: style(),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            setting_title_2("Help"),
            listItem(onTap: () {}, title: "Help Center", height: 100),
            settings_titles("Legal"),
            listItem(onTap: () {}, title: "Terms of Service"),
            divider_settings(color: Color(0xFFD6D6D6)),
            listItem(onTap: () {}, title: "Privacy policy"),
            divider_settings(color: Color(0xFFD6D6D6)),
            listItem(onTap: () {}, title: "Cookie use"),
            divider_settings(color: Color(0xFFEEEEEE)),
            listItem(onTap: () {}, title: "Legal notices"),
            divider_settings(color: Color(0xFFEEEEEE)),
          ],
        ),
      ),
    );
  }
}
