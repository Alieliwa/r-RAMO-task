import 'package:flutter/material.dart';
class CouponsItem extends StatelessWidget {
  const CouponsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border:
        Border.all(width: 3, color: Color(0xff2C0D47)),
        // color: Colors.teal[200],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8,left: 8,top: 8),
            child: Row(
              children: [
                Icon(Icons.share),
                Spacer(),
                Icon(Icons.favorite_border),
              ],
            ),
          ),
          Image.asset("assets/images/adids.png",height: 35,width: 66,),
          Text("UP TO 50% OFF",style: TextStyle(fontSize: 16,fontFamily: "Gilroy",fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 8.0),
            child: Image.asset("assets/images/usercode.png",),
          ),
        ],
      ),
    );
  }
}
