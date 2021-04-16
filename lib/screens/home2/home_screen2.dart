import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_yoga/colorsfile.dart';
import 'package:meditation_yoga/screens/detail/detail_screen.dart';
import 'package:meditation_yoga/screens/home/home_screen.dart';
import 'package:meditation_yoga/screens/home2/widget/courses.dart';
import 'package:meditation_yoga/screens/home2/widget/custom_app_bar.dart';
import 'package:meditation_yoga/screens/home2/widget/diff_styles.dart';
import 'package:meditation_yoga/screens/screen4/screen4.dart';

class HomeScreen2 extends StatefulWidget
{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2>
{
  int selectedIconIndex = 2;
  final List<Widget> _children = [HomeScreen(),DetailsScreen(),Home3(),Screen4()];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: _children[selectedIconIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: primary,
        height: 60.0,
        color: white,
        onTap: (index)
        {
          setState(()
          {
            selectedIconIndex = index;
          });
        },
        animationDuration: Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Icon(Icons.play_arrow_outlined, size: 30,color: selectedIconIndex == 0 ? white : black,),
          Icon(Icons.search, size: 30,color: selectedIconIndex == 1 ? white : black,),
          Icon(Icons.home_outlined, size: 30,color: selectedIconIndex == 2 ? white : black,),
          Icon(Icons.favorite_border_outlined, size: 30,color: selectedIconIndex == 3 ? white : black,),
          Icon(Icons.person_outline, size: 30,color: selectedIconIndex == 4 ? white : black,),
        ],
      ),
    );
  }
}

class Home3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        body:Padding(
        padding: EdgeInsets.only(top:appPadding * 2),
        child: Column(
          children: [
            CustomAppBar(),
            DiffStyles(),
            Courses(),
          ],
        ),
      ),

      );
  }
}