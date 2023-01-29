import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Message_Page_Extensions/conversation_info_page.dart';
import 'package:twitter_clone/pages/Notifications_Page_Extensions/notifications_settings.dart';
import 'package:twitter_clone/theme/light_color.dart';

class ChatPage extends StatefulWidget {
  final String name;
  final String heshtek;
  const ChatPage({super.key, required this.name, required this.heshtek});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late String name;
  late String heshtek;
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    name = widget.name;
    heshtek = widget.heshtek;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: ListView(
          children: const [
            MessageRight(
              width: 40,
              message: "Hi",
              date: "19 Mar",
            ),
            MessageLeft(
              width: 80,
              message: "Hi Akif",
              date: "4 m",
            ),
            MessageLeft(
              width: 110,
              message: "What's up ?",
              date: "4 m",
            ),
            MessageRight(
              width: 90,
              message: "I am good",
              date: "17 s",
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const AppBarLeadingIcon(),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ConversationInfoPage(heshtek: heshtek, name: name,)));
            },
            child: Text(
              heshtek,
              style: const TextStyle(
                  color: AppColor.lightGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      actions: [i_container()],
    );
  }

  Container i_container() {
    return Container(
      width: 22,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 15, top: 17, bottom: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45), color: AppColor.primary),
      child: const Text(
        "i",
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class MessageLeft extends StatelessWidget {
  final double width;
  final String message;
  final String date;
  const MessageLeft({
    Key? key,
    required this.width,
    required this.message,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      margin: const EdgeInsets.only(left: 15),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/İmage.jpeg"),
                  radius: 23,
                ),
              ),
              Container(
                width: width,
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: AppColor.extraLightGrey,
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
            ],
          ),
          Text(
            date,
            style: const TextStyle(
                color: AppColor.lightGrey,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class MessageRight extends StatelessWidget {
  final double width;
  final String message;
  final String date;
  const MessageRight({
    Key? key,
    required this.width,
    required this.message,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      margin: const EdgeInsets.only(right: 15),
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: width,
            height: 40,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              color: AppColor.primary,
            ),
            child: Text(
              message,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
          Text(
            date,
            style: const TextStyle(
                color: AppColor.lightGrey,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
