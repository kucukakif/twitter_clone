import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/light_color.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool checkBoxFilterValue = false;
  bool checkBoxPreferencesValue = false;
  void _onChangeFilter(bool value) {
    setState(() {
      checkBoxFilterValue = value;
    });
  }

  void _onChangePrefereces(bool value) {
    setState(() {
      checkBoxPreferencesValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
        children: [
          settings_titles("Filters"),
          Container(
            padding: const EdgeInsets.only(top: 5),
            height: 230,
            width: double.infinity,
            child: Column(
              children: [
                _filter_or_preferences_title(
                    text: "Quality filter",
                    explanation:
                        "Filter lower-quality from your notifications. This won't filter out notifications from people you follow or account you 've intacted with recently.",
                    values: checkBoxFilterValue,
                    onchange: (value) {
                      _onChangeFilter(value);
                    }),
                divider_settings(),
                listItem(
                  onTap: () {},
                  title: "Advanced filter",
                ),
                divider_settings(),
                listItem(onTap: () {}, title: "Muted word"),
              ],
            ),
          ),
          setting_title_2("Preferences"),
          Container(
            width: double.infinity,
            height: 95,
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                _filter_or_preferences_title(
                    text: "Unread notification count badge",
                    values: checkBoxPreferencesValue,
                    onchange: (value) {
                      _onChangePrefereces(value);
                    },
                    explanation:
                        "Display a badge with the number of notifications waiting for you inside the Twitter app.")
              ],
            ),
          ),
          divider_settings(),
          listItem(onTap: () {}, title: "Push notifications"),
          divider_settings(),
          listItem(
            onTap: () {},
            title: "SMS notifications",
          ),
          divider_settings(),
          listItem(
              onTap: () {},
              title: "Email notifications",
              subTitle: "Control when how often Twitter sends emails to you."),
          divider_settings(),
        ],
      ),
    );
  }

  Column _filter_or_preferences_title(
      {required String text,
      required bool values,
      required String explanation,
      required Function onchange}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        Row(
          children: [
            Container(
              width: 320,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  explanation,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColor.lightGrey),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Checkbox(
                  activeColor: AppColor.primary,
                  value: values,
                  onChanged: (value) {
                    onchange(value);
                  }),
            )
          ],
        ),
      ],
    );
  }
}

AppBar _appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: const AppBarLeadingIcon(),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Notifications",
          style: TextStyle(
              fontFamily: "HelveticaNeue500",
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Text(
          "@akifemrekucuk",
          style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: AppColor.lightGrey),
        ),
      ],
    ),
  );
}

Padding divider_settings({Color color = const Color(0xFFE0E0E0)}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Divider(
      height: 1.3,
      thickness: 0.7,
      color: color,
    ),
  );
}

Container setting_title_2(String text, {double height = 70}) {
  return Container(
    color: AppColor.extraLightGrey,
    width: double.infinity,
    height: height,
    alignment: Alignment.bottomLeft,
    padding: const EdgeInsets.only(left: 15, bottom: 15),
    child: Text(
      text,
      style: const TextStyle(
          color: AppColor.darkGrey,
          fontSize: 22.5,
          fontWeight: FontWeight.w600),
    ),
  );
}

GestureDetector listItem({
  required VoidCallback onTap,
  required String title,
  String subTitle = "",
  Color color = Colors.black,
  double height = 50,
  double size = 16,
}) {
  bool sizee = false;
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 15, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: color),
          ),
          subTitle == ""
              ? Container()
              : Text(
                  subTitle,
                  style: TextStyle(
                      fontSize: size,
                      fontWeight: FontWeight.w500,
                      color: AppColor.lightGrey),
                ),
        ],
      ),
    ),
  );
}

Container settings_titles(String text) {
  return Container(
    height: 50,
    width: double.infinity,
    padding: const EdgeInsets.only(left: 15, top: 13, bottom: 10),
    color: AppColor.extraLightGrey,
    child: Text(
      text,
      style: const TextStyle(
          color: AppColor.darkGrey, fontSize: 23, fontWeight: FontWeight.w600),
    ),
  );
}

class AppBarLeadingIcon extends StatelessWidget {
  const AppBarLeadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: AppColor.primary,
        size: 30,
      ),
    );
  }
}
