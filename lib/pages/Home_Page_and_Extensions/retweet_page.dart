import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/light_color.dart';

class RetweetPage extends StatefulWidget {
  final String text;
  final String name;
  final String heshtek;
  final String gmail;
  final String tweetTime;
  final String image;
  const RetweetPage(
      {super.key,
      required this.tweetTime,
      required this.gmail,
      required this.text,
      required this.heshtek,
      required this.name,
      required this.image});

  @override
  State<RetweetPage> createState() => _RetweetPageState();
}

class _RetweetPageState extends State<RetweetPage> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController controller = TextEditingController();
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
              width: 105,
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
                  "Retweet",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 22, bottom: 5),
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
                  Container(
                    margin: const EdgeInsets.only(top: 25, left: 5),
                    width: 300,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tweet your reply"),
                      style: const TextStyle(
                          fontSize: 18, fontFamily: "HelveticaNeue600"),
                      controller: controller,
                      maxLines: 15,
                      minLines: 1,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 50),
                width: 320,
                padding:
                    const EdgeInsets.only(left: 8, bottom: 5, top: 5, right: 5),
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1.1,
                      color: AppColor.lightGrey,
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5, top: 2, bottom: 3),
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage("assets/images/İmage.jpeg"),
                              radius: 23,
                            ),
                          ),
                        ),
                        Text(
                          widget.name,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            widget.gmail,
                            style: const TextStyle(
                                color: AppColor.darkGrey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          " . ${widget.tweetTime}",
                          style: const TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        widget.text,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
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
    );
  }
}


// Container(
//                 width: 325,
//                 height: 240,
//                 padding: const EdgeInsets.only(top: 15, right: 10, left: 5),
//                 child: Text(
//                   widget.text,
//                   style: const TextStyle(
//                       fontSize: 18, fontWeight: FontWeight.w500),
//                 ),
//               )