import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;


class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: defulutTextFormFild(
              hintText: "Search your beloved deal...",
              prefix: Icon(Icons.search),
            suffix:  Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset("assets/images/searchsfix.png"),
            ),
          ),
        ),

        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(right: 10.0,left: 5.0),
          child: Stack(
            children: [
              Icon(Icons.notifications_none, color: Color(0xff2C0D47), size: 40),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '05',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget defulutTextFormFild(
          {TextEditingController? controller,
          FormFieldValidator? validator,
          TextInputType? type,
          String? labeltext,
          String? hintText,
          Widget? suffix,
          Widget? prefix,
          bool? obscureText,
          bool? secirty,
          VoidCallback? suffixFun,
          ValueChanged<String>? onChanged,
          VoidCallback? onTap,
          TextStyle? style}) =>
      Padding(
        padding: const EdgeInsets.only(   top: 10,
            bottom: 10,
            left: 10),
        child: TextFormField(
          style: style,
          validator: validator,
          controller: controller,
          keyboardType: type,
          onChanged: onChanged,
          onTap: onTap,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff2C0D47),
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
               borderSide: BorderSide(
                color: Color(0xff2C0D47),
          ),
          borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: labeltext,
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xFF8D8E98)),
            labelStyle: TextStyle(color: Colors.black),
            prefixIcon: prefix,
            suffixIcon:suffix,
               ),
          ),
      );

}
