import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class DisplayAndSound extends StatefulWidget {
  const DisplayAndSound({super.key});

  @override
  State<DisplayAndSound> createState() => _DisplayAndSoundState();
}

bool checkBox1 = false;
bool checkBox2 = false;
bool checkBox3 = false;
bool checkBox4 = false;

class _DisplayAndSoundState extends State<DisplayAndSound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingIcon(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Display and Sound",
          style: style(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            settings_titles("Media"),
            ListItemWithCheckBox(
                onTap: () {}, title: "Media Previews", values: checkBox1),
            settings_titles("Display"),
            listItem(onTap: () {}, title: "Dark Mode", subTitle: "Off"),
            listItem(
                onTap: () {}, title: "Dark Mode apperance", subTitle: "Dim"),
            ListItemWithCheckBox(
                onTap: () {},
                title: "Emoji",
                values: checkBox2,
                subTitle:
                    "Use the Twitter set instead of your device's default set",
                height: 70),
            setting_title_2("Sound"),
            ListItemWithCheckBox(
                onTap: () {}, title: "Sound effects", values: checkBox3),
            setting_title_2("Web browser"),
            ListItemWithCheckBox(
                onTap: () {},
                title: "Use in-app browser",
                values: checkBox4,
                subTitle: "Open external links with Twitter browser"),
            divider_settings(color: const Color(0xFFEEEEEE))
          ],
        ),
      ),
    );
  }
}

class ListItemWithCheckBox extends StatefulWidget {
  final VoidCallback onTap;
  final String title;
  final String subTitle;
  final double height;
  final bool values;
  const ListItemWithCheckBox({
    super.key,
    required this.onTap,
    required this.title,
    this.subTitle = "",
    this.height = 50,
    required this.values,
  });

  @override
  State<ListItemWithCheckBox> createState() => _ListItemWithCheckBoxState();
}

class _ListItemWithCheckBoxState extends State<ListItemWithCheckBox> {
  bool values = false;
  @override
  void initState() {
    super.initState();
    values = widget.values;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 15, top: 8, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                widget.subTitle == ""
                    ? Container()
                    : Container(
                        width: 310,
                        child: Text(
                          widget.subTitle,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColor.lightGrey),
                        ),
                      ),
              ],
            ),
            Checkbox(
                value: values,
                onChanged: (value) {
                  setState(() {
                    values = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
