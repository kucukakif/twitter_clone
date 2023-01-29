import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Message_Page_Extensions/chat_page.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_page.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.extraLightGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
              color: AppColor.primary,
            )),
        title: const Text(
          "New Message",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SearchTextField(controller: controller),
            GestureDetector(
              child: const SearchItem(
                name: "Akif Emre",
                gmail: "@akifemrekucuk",
                blueTick: true,
                image: "assets/images/İmage.jpeg",
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatPage(
                              name: 'Akif Emre',
                              heshtek: '@akifemrekucuk',
                            )));
              },
            ),
            const SearchItem(
              name: "Akif Emre",
              gmail: "@akifemrekucuk",
              blueTick: true,
              image: "assets/images/İmage.jpeg",
            ),
            const SearchItem(
              name: "Necip Fazıl",
              gmail: "@necipfazil",
              blueTick: false,
              image: "assets/images/necip_fazil.jpg",
            ),
            const SearchItem(
              name: "Erbakan Malkoç",
              gmail: "@erbakanmalkoc",
              blueTick: true,
              image: "assets/images/erbakan_malkoc.jfif",
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.extraLightGrey,
      child: TextField(
        controller: controller,
        style: const TextStyle(
            color: AppColor.darkGrey,
            fontSize: 23,
            fontWeight: FontWeight.w400),
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: "Search for people and groups",
          hintStyle: TextStyle(
              color: AppColor.darkGrey,
              fontSize: 23,
              fontWeight: FontWeight.w400),
          prefixIcon: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Icon(
              AppIcon.search,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
