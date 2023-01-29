import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Auth/signin.dart';
import 'package:twitter_clone/pages/Search_Page_Extension/search_setttings.dart';
import 'package:twitter_clone/theme/app_icons.dart';
import 'package:twitter_clone/theme/light_color.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Divider(
            height: 1.3,
            thickness: 0.9,
            color: Color(0xFFE0E0E0),
          ),
        ),
        SearchItem(name: "Akif Emre", gmail: "@akifemrekucuk", blueTick: true,image: "assets/images/İmage.jpeg",),
        SearchItem(name: "Necip Fazıl", gmail: "@necipfazil", blueTick: false,image: "assets/images/necip_fazil.jpg",),
        SearchItem(
            name: "Erbakan Malkoç", gmail: "@erbakanmalkoc", blueTick: true,image: "assets/images/erbakan_malkoc.jfif",),
      ],
    ));
  }
}

class SearchItem extends StatelessWidget {
  final String name;
  final String gmail;
  final bool blueTick;
  final String image;
  const SearchItem({
    Key? key,
    required this.name,
    required this.gmail,
    required this.blueTick, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 77.5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(image),
                    radius: 26,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: blueTick == true
                                ? const Icon(
                                    AppIcon.blueTick,
                                    size: 17,
                                    color: AppColor.primary,
                                  )
                                : null,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        gmail,
                        style: const TextStyle(
                            color: AppColor.lightGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Divider(
              height: 1.3,
              thickness: 0.8,
              color: Color(0xFFE0E0E0),
            ),
          ),
        ],
      ),
    );
  }
}

Widget search_appbar(BuildContext context) {
  TextEditingController controller = TextEditingController();
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: const Padding(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage("assets/images/İmage.jpeg"),
        radius: 25,
      ),
    ),
    title: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 15),
        child: SizedBox(
          width: 320,
          height: 70,
          child: MyTextField(
            emailController: controller,
            text: "Search",
            deger: 5,
          ),
        )),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SearchSettings()));
          },
          icon: const Padding(
            padding: EdgeInsets.only(bottom: 10, right: 10),
            child: Icon(
              AppIcon.settings,
              size: 29,
              color: AppColor.primary,
            ),
          ))
    ],
  );
}
