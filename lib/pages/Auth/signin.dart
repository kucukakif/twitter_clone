import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Auth/forget_password.dart';
import 'package:twitter_clone/theme/light_color.dart';
import 'package:twitter_clone/pages/Auth/widget/blue_button.dart';
import 'package:twitter_clone/pages/Auth/widget/log_in_appbar.dart';

import '../../widgets/bottom_menu_bar.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(context, "Sign in", Colors.white),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: size.height - 660,
            ),
            MyTextField(
              emailController: emailController,
              text: "   Enter email",
              deger: 25,
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              emailController: passwordController,
              text: "   Enter password",
              deger: 25,
            ),
            SizedBox(
              height: size.height - 750,
            ),
            BlueButton(
                text: "Email Login",
                onPress: () async {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomMenuBar(
                              )));
                }),
            SizedBox(
              height: size.height - 740,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPassword()));
                },
                child: const Text(
                  "Forget password?",
                  style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 18,
                  ),
                )),
            SizedBox(
              height: size.height - 785,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Divider(
                height: 1,
                thickness: 0.7,
                color: Color(0xFFD6D6D6),
              ),
            ),
            SizedBox(
              height: size.height - 750,
            ),
            Container(
              height: 50,
              width: 300,
              margin: const EdgeInsets.symmetric(
                horizontal: 55,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      // spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(2, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 15),
                  child: Image.asset(
                    "assets/images/google_logo.png",
                    width: 25,
                    height: 25,
                  ),
                ),
                const Text(
                  "Continue with Google",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black45),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final TextEditingController emailController;
  final String text;
  final double deger;
  final bool errorBorder;
  MyTextField({
    Key? key,
    required this.emailController,
    required this.text,
    required this.deger,
    this.errorBorder = false,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool border = false;

  @override
  Widget build(BuildContext context) {
    border = widget.errorBorder;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.deger),
      child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
          controller: widget.emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
            ),
            enabledBorder: border == true
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(color: TwitterColor.ceriseRed, width: 1.5),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.5),
                  ),
            focusedBorder: border == true
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(color: TwitterColor.ceriseRed, width: 1.5),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.5),
                  ),
            hintText: widget.text,
            hintTextDirection: TextDirection.ltr,
            fillColor: const Color(0xFFEEEEEE),
            filled: true,
            hintStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          )),
    );
  }
}
