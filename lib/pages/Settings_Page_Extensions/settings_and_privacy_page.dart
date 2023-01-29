import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/about_twitter_page.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/accessibility_page.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/account_settings_page.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/content_preferences_page.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/data_usage_page.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/display_and_sound_page.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/privacy_and_safety_page.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';

class SettingAndPrivacy extends StatefulWidget {
  final String gmail;
  const SettingAndPrivacy({super.key, required this.gmail});

  @override
  State<SettingAndPrivacy> createState() => _SettingAndPrivacyState();
}

class _SettingAndPrivacyState extends State<SettingAndPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingIcon(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Settings and privacy",
          style: style(),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            settings_titles(widget.gmail),
            listItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AccountSettings(gmail: widget.gmail)));
                },
                title: "Account"),
            divider_settings(),
            listItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PrivacyAndSafety(gmail: widget.gmail)));
                },
                title: "Privacy and Policy"),
            divider_settings(),
            listItem(onTap: () {}, title: "Notification"),
            divider_settings(),
            listItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ContentPreferences(gmail: widget.gmail)));
                },
                title: "Content preferences"),
            setting_title_2("General"),
            listItem(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayAndSound()));
                },
                title: "Display and Sound"),
            divider_settings(),
            listItem(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DataUsage()));
                },
                title: "Data usage"),
            divider_settings(),
            listItem(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Accessibility()));
                },
                title: "Accessibility"),
            divider_settings(),
            listItem(onTap: () {}, title: "Proxy"),
            divider_settings(),
            listItem(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutTwitter()));
                },
                title: "About Twitter"),
            divider_settings(),
            settings_text(
                text:
                    "These setting affect all of your Twitter accounts on this devce."),
          ],
        ),
      ),
    );
  }
}
