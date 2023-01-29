import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/light_color.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const BlueButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 21,
            color: Colors.white,
          ),
        ),
        style: TextButton.styleFrom(
          alignment: Alignment.center,
          maximumSize: Size(360, 50),
          minimumSize: Size(360, 50),
          backgroundColor: AppColor.primary,
          shape: const StadiumBorder(),
        ),
      ),
    );
  }
}
