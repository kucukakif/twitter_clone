import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:twitter_clone/theme/light_color.dart';
import '../../models/user_model.dart';

class TweetCreatePage extends StatefulWidget {
  final String gmail;
  const TweetCreatePage({super.key, required this.gmail});

  @override
  State<TweetCreatePage> createState() => _TweetCreatePageState();
}
DateTime now = DateTime.now();
class _TweetCreatePageState extends State<TweetCreatePage> {
  TextEditingController textController = TextEditingController();
  TextEditingController heshtekController = TextEditingController();
  List<User> userList = [];
  String name = "";
  String gmail = "";
  late String text = textController.text;
  late String heshtek = heshtekController.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.blue,
              size: 25,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: SizedBox(
              width: 90,
              height: 25,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColor.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text(
                  "Tweet",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 625,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage("assets/images/İmage.jpeg"),
                                radius: 23,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: SizedBox(
                          width: 300,
                          child: TextField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write a new tweet"),
                            style: const TextStyle(
                                fontSize: 18, fontFamily: "HelveticaNeue600"),
                            controller: textController,
                            maxLines: 12,
                            minLines: 1,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "#",
                            hintStyle: TextStyle()),
                        style: TextStyle(
                            color: AppColor.primary.withOpacity(0.8),
                            fontSize: 16,
                            fontFamily: "HelveticaNeue600"),
                        controller: heshtekController,
                        maxLines: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.9,
                      height: 1,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.insert_photo_outlined,
                            color: AppColor.primary,
                            size: 28,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: AppColor.primary,
                            size: 28,
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
