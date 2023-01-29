import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class SearchSettings extends StatefulWidget {
  const SearchSettings({super.key});

  @override
  State<SearchSettings> createState() => _SearchSettingsState();
}

class _SearchSettingsState extends State<SearchSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: const AppBarLeadingIcon(),
        title: Text(
          "Trends",
          style: style(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 75,
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Trends location",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      "New York",
                      style: TextStyle(
                          color: AppColor.darkGrey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 15, top: 20),
              child: Text(
                "You can see what's trending in a specfic location by selection which location appears in your Trending tab.",
                style: TextStyle(
                    color: AppColor.darkGrey,
                    fontSize: 15,
                    fontFamily: "HelveticaNeue600",
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

TextStyle style() {
    return const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black);
  }