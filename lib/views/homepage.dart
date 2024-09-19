import 'package:eramotask/views/widgets/listcouponsitem.dart';
import 'package:eramotask/views/widgets/listofcustomitem.dart';
import 'package:eramotask/views/widgets/searchwidget.dart';
import 'package:eramotask/views/widgets/sliderimage.dart';
import 'package:eramotask/views/widgets/textsignin.dart';
import 'package:eramotask/views/widgets/texttopstorewidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});

  List<BottomNavigationBarItem> bottomNavigation = [
    BottomNavigationBarItem(icon: Icon(Icons.discount), label: "فيديوهات"),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: 'أمتحاناتي'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: 'الرئيسية',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.bakery_dining_outlined), label: 'المفضله'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الاعدادات'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SearchView(),
            TextTopStoreWidget(
              textOne: "Top Stores in Egypt",
              textTwo: "See All",
            ),
            ListOfCustomItem(),
            SilderImage(),
            TextSigninWidget(),
            TextTopStoreWidget(
              textOne: "Best Coupons in Egypt",
              textTwo: "See All",
            ),
            CuponListItem(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
        child: BottomNavigationBar(
          selectedItemColor: Color(0xff2C0B47),
          elevation: 2,
          unselectedItemColor: Color(0xff2C0B47),
          backgroundColor: Colors.white,
          onTap: (index) {},
          items: bottomNavigation,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff2C0B47),
        onPressed: () {},
        child: Center(
            child: Icon(
          Icons.house,
          color: Colors.white,
          size: 30,
        )),
      ),
    );
  }
}
