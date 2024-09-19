import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
       child: Image.asset("assets/images/noon.png"),
    );
  }
}
