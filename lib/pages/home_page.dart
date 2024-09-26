import 'package:flutter/material.dart';
import 'package:travel_app/components/top.dart';
import 'package:travel_app/components/heading.dart';
import 'package:travel_app/components/label_section.dart';
import 'package:travel_app/components/recommended.dart';
import 'package:travel_app/components/search.dart';
import 'package:travel_app/utils/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: medium, top: 50, right: medium),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                const HeadingSection(),
                medium.heightBox,
                const SearchSection(),
                medium.heightBox,
                LabelSection(text: "Recommended", style: heading1),
                medium.heightBox,
                const Recommended(),
                medium.heightBox,
                LabelSection(text: 'Top Recommendations', style: heading2),
                medium.heightBox,
                const Top(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
            selectedItemColor: accent,
            unselectedItemColor: icon,
            backgroundColor: white,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.explore), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_outline), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: ''),
            ]),
      ),
    );
  }
}
