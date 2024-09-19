import 'package:flutter/material.dart';

class TextTopStoreWidget extends StatelessWidget {
   TextTopStoreWidget({super.key,required this.textOne,required this.textTwo});

  String textOne;
  String textTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(
            textOne,
            style: TextStyle(
              fontSize: 24,
              fontFamily: "Gilroy",
              color: Color(0xff2C0D47),
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: (){},
            child: Text(
              textTwo,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Gilroy",
                color: Color(0xff7D7A7A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
