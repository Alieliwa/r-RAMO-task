import 'package:eramotask/views/widgets/customitem.dart';
import 'package:flutter/material.dart';

class ListOfCustomItem extends StatelessWidget {
  const ListOfCustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding:  EdgeInsets.only(right: 10.0),
                child: AspectRatio(aspectRatio: 1, child: CustomItem()),
              );
            }),
      ),
    );
  }
}
