import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/display_and_sound_page.dart';

class Accessibility extends StatefulWidget {
  const Accessibility({super.key});

  @override
  State<Accessibility> createState() => _AccessibilityState();
}

class _AccessibilityState extends State<Accessibility> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingIcon(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Accessibility",
          style: style(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            settings_titles("Screen Reader"),
            ListItemWithCheckBox(
                onTap: () {},
                title: 'Pronounce # as "hashtag"',
                values: checkBox1),
            settings_titles("Vision"),
            ListItemWithCheckBox(
                height: 90,
                onTap: () {},
                title: "Compose image descriptions",
                values: checkBox2,
                subTitle:
                    "Adds the ability to describe images for the visually impaired."),
            setting_title_2("Motion"),
            ListItemWithCheckBox(
              height: 85,
              onTap: () {},
              title: "Redce Motion",
              values: checkBox3,
              subTitle:
                  "Limit the amount of in-app animations, including live engagement counts.",
            ),
            divider_settings(),
            listItem(
                onTap: () {}, title: "Video autoplay", subTitle: "Wİ-Fİ only")
          ],
        ),
      ),
    );
  }
}
