import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class ContentPreferences extends StatefulWidget {
  final String gmail;
  const ContentPreferences({super.key, required this.gmail});

  @override
  State<ContentPreferences> createState() => _ContentPreferencesState();
}

class _ContentPreferencesState extends State<ContentPreferences> {
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
              "Content preferences",
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
        child: Column(
          children: [
            settings_titles("Explore"),
            listItem(onTap: () {}, title: "Trends"),
            divider_settings(),
            listItem(onTap: () {}, title: "Search settings"),
            setting_title_2("Languages"),
            listItem(
                onTap: () {},
                title: "Recommendations",
                subTitle:
                    "Select which language you want recommended Tweets, people, and trends to include",
                height: 85,
                size: 15.5),
            setting_title_2("Safety"),
            listItem(onTap: () {}, title: "Blocked accounts"),
            divider_settings(),
            listItem(onTap: () {}, title: "Muted accounts"),
            divider_settings()
          ],
        ),
      ),
    );
  }
}
