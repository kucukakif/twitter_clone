import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Auth/signin.dart';
import 'package:twitter_clone/pages/Auth/widget/blue_button.dart';
import 'package:twitter_clone/pages/Auth/widget/log_in_appbar.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(context, "Forget Password", Colors.white),
      body: Container(
          child: ListView(
        children: [
          SizedBox(
            height: size.height - 630,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              "Forget Password",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: size.height - 780,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Enter your email address below to receive password reset insruction",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: size.height - 730,
          ),
          MyTextField(
            emailController: emailController,
            text: "   Enter email",
            deger: 25,
          ),
          SizedBox(
            height: size.height - 760,
          ),
          BlueButton(
              text: "Submit",
              onPress: () async {
                await FirebaseAuth.instance
                    .sendPasswordResetEmail(email: emailController.text);
                Navigator.pop(context);
              }),
        ],
      )),
    );
  }
}
