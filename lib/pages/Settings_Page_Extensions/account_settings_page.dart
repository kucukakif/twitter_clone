import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class AccountSettings extends StatefulWidget {
  final String gmail;
  const AccountSettings({super.key, required this.gmail});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  late String gmailName;
  String gmail = "akifemrekucuk@gmail.com";
  @override
  void initState() {
    super.initState();
    gmailName = widget.gmail;
  }

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
              "Account",
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
            settings_titles("Login and security"),
            listItem(onTap: () {}, title: "Username", subTitle: gmailName),
            divider_settings(),
            listItem(onTap: () {}, title: "Phone"),
            divider_settings(),
            listItem(onTap: () {}, title: "Email address", subTitle: gmail),
            divider_settings(),
            listItem(onTap: () {}, title: "Password"),
            divider_settings(),
            listItem(onTap: () {}, title: "Security"),
            setting_title_2("Data and Permission"),
            listItem(onTap: () {}, title: "Country"),
            divider_settings(),
            listItem(onTap: () {}, title: "Your Twitter data"),
            divider_settings(),
            listItem(onTap: () {}, title: "Apps and sessions"),
            divider_settings(),
            listItem(
                onTap: () {}, title: "Log out", color: TwitterColor.ceriseRed),
            divider_settings(),
          ],
        ),
      ),
    );
  }
}
