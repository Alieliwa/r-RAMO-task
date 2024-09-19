import 'package:flutter/material.dart';

class TextSigninWidget extends StatelessWidget {
  const TextSigninWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 8.0, left: 8.0),
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            size: 30,
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            "Log in",
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff2C0D47),
                fontFamily: "Gilroy",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            "OR",
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff7D7A7A),
                fontFamily: "Gilroy",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            "Register",
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff2C0D47),
                fontFamily: "Gilroy",
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
