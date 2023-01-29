import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/Auth/signin.dart';
import 'package:twitter_clone/pages/Auth/widget/blue_button.dart';
import 'package:twitter_clone/pages/Auth/widget/log_in_appbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool border = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // ignore: unrelated_type_equality_checks
    if (confirmPasswordController.text != passwordController.text) {
      border = true;
    } else {
      border = false;
    }
    return Scaffold(
      appBar: MyAppBar(context, "Sign Up", Colors.white),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: size.height - 670,
            ),
            MyTextField(
              emailController: nameController,
              text: "   Name",
              deger: 25,
            ),
            const SizedBox(
              height: 30,
            ),
            MyTextField(
              emailController: emailController,
              text: "   Enter email",
              deger: 25,
            ),
            const SizedBox(
              height: 30,
            ),
            MyTextField(
              emailController: passwordController,
              text: "   Enter password",
              deger: 25,
            ),
            const SizedBox(
              height: 30,
            ),
            MyTextField(
              emailController: confirmPasswordController,
              text: "   Confirm password",
              deger: 25,
              errorBorder: border,
            ),
            const SizedBox(
              height: 40,
            ),
            BlueButton(
              text: "Sign up",
              onPress: () async {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
