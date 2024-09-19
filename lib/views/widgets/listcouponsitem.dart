import 'package:eramotask/views/widgets/cuponitem.dart';
import 'package:flutter/material.dart';

class CuponListItem extends StatelessWidget {
  const CuponListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding:  EdgeInsets.only(right: 10.0),
                child: AspectRatio(aspectRatio: 1, child: CouponsItem()),
              );
            }),
      ),
    );
  }
}
