import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SilderImage extends StatelessWidget {
  const SilderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return OfferSlider();
  }
}


class OfferSlider extends StatelessWidget {
  final List<String> images = [
    'assets/images/backgroudimage.png',
    'assets/images/backgroudimage.png',
    'assets/images/backgroudimage.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            return OfferCard(imageUrl: images[index]);
          },
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: false,
          ),
        ),

      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  final String imageUrl;

  OfferCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              'assets/images/carfor.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: MediaQuery.of(context).size.width * 0.25,
          child: Text(
            "90% OFF",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          left: MediaQuery.of(context).size.width * 0.2,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              backgroundColor: Color(0xffFFB400),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              'GET DEAL NOW',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xff2C0D47),
              ),
            ),
          ),
        ),
        Positioned(
          top: 180,
          left: MediaQuery.of(context).size.width * 0.35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: index == 0 ? 12 : 8,
                height: index == 0 ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0 ? Colors.orange : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }}