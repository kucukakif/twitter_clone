import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/pages/Auth/create_account.dart';
import 'package:twitter_clone/pages/Auth/signin.dart';
import 'package:twitter_clone/theme/light_color.dart';
import 'package:twitter_clone/pages/Auth/widget/blue_button.dart';
import 'package:twitter_clone/pages/Auth/widget/title_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 40, left: 30),
          child: Column(
            children: [
              Image.asset(
                "assets/images/icon-480.png",
                width: 50,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 550,
              ),
              const TitleText(
                "See what's happening in the world right now.",
                fontSize: 28,
              ),
              const SizedBox(
                height: 35,
              ),
              BlueButton(
                text: "Create account",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 610,
              ),
              Row(
                children: [
                  Text(
                    "Have an account already?",
                    style: GoogleFonts.mulish(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: TwitterColor.dodgeBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
