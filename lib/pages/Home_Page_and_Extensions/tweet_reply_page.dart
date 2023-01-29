import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Home_Page_and_Extensions/home_page.dart';
import 'package:twitter_clone/theme/light_color.dart';

class ReplayTweetPage extends StatefulWidget {
  final String text;
  final String name;
  final String heshtek;
  final String gmail;
  final String tweetTime;
  ReplayTweetPage(
      {super.key,
      required this.tweetTime,
      required this.gmail,
      required this.text,
      required this.heshtek,
      required this.name,});

  @override
  State<ReplayTweetPage> createState() => _ReplayTweetPageState();
}

class _ReplayTweetPageState extends State<ReplayTweetPage> {
  TextEditingController controller = TextEditingController();

  late String text;
  @override
  void initState() {
    super.initState();
  }

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
                  Navigator.pop(context);
                  
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColor.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text(
                  "Replay",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 5),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage("assets/images/İmage.jpeg"),
                          radius: 23,
                        ),
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 232,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: SizedBox(
                        height: 50,
                        width: 50,
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
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Text(
                              widget.name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.gmail,
                              style: const TextStyle(
                                  color: AppColor.darkGrey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " - ${widget.tweetTime}",
                              style: const TextStyle(
                                  color: AppColor.darkGrey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 310,
                        padding: const EdgeInsets.only(
                            left: 8, bottom: 5, top: 5, right: 3),
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1.1,
                              color: AppColor.lightGrey,
                            )),
                        child: Text(
                          widget.text,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          widget.heshtek,
                          style: const TextStyle(
                              color: AppColor.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: SizedBox(
                          width: 300,
                          child: TextField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Tweet your replay"),
                            style: const TextStyle(
                                fontSize: 18, fontFamily: "HelveticaNeue600"),
                            controller: controller,
                            maxLines: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
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
