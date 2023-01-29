import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/display_and_sound_page.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Settings_Page_Extensions/privacy_and_safety_page.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';

class DataUsage extends StatefulWidget {
  const DataUsage({super.key});

  @override
  State<DataUsage> createState() => _DataUsageState();
}

class _DataUsageState extends State<DataUsage> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingIcon(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Data Usage",
          style: style(),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            settings_titles("Data Saver"),
            ListItemWithCheckBox(
              onTap: () {},
              title: "Data Server",
              values: checkBox1,
              subTitle:
                  "When enabled, video won't autoplay and lower- quality images load. This automatically reduces your data usage for all Twitter accounts on this device.",
              height: 120,
            ),
            settings_titles("Images"),
            listItem(
                onTap: () {},
                title: "High quality images",
                subTitle: "Mobile data & Wİ-Fİ"),
            settings_text(text: "Select when high quality images should load."),
            setting_title_2("Video"),
            listItem(
                onTap: () {},
                title: "High-quality video",
                subTitle: "Wİ-Fİ only"),
            settings_text(
                text: "Select when the highest quality avaliable should play"),
            listItem(
                onTap: () {}, title: "Video autoplay", subTitle: "Wİ-Fİ only"),
            settings_text(text: "Select when video should play automatically."),
            setting_title_2("Data sync"),
            ListItemWithCheckBox(
                onTap: () {}, title: "Sync data", values: checkBox2)
          ],
        ),
      ),
    );
  }
}
