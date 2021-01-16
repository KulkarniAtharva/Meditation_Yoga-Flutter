import 'package:flutter/material.dart';
import 'package:meditation_yoga/colorsfile.dart';
import 'package:meditation_yoga/screens/home/widget/book_rating.dart';
import 'package:meditation_yoga/screens/home/widget/rounded_button.dart';

class DetailsScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .5 - 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .1,
                        ),
                        BookInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: size.height * .4 + 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: "Mrigi Mudra",
                        chapterNumber: 1,
                        tag: "Beginning pranayama students",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Right Nostril",
                        chapterNumber: 2,
                        tag: "Left nostril with ring-little fingers",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Nostril Open",
                        chapterNumber: 3,
                        tag: "Open and exhale slowly through the left",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Nadi Shodhana",
                        chapterNumber: 4,
                        tag: "Ratio breathing, Seed mantras",
                        press: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.display1,
                      children: [
                        TextSpan(text: "You might also "),
                        TextSpan(
                          text: "likes...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "Supported Headstand\n",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Maven",
                                      style: TextStyle(color: kBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  BookRating(
                                    score: 4.9,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: RoundedButton(
                                    text: "Start",
                                    verticalPadding: 10,
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "images/mm3.png",
                          width: 150,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget
{
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;

  const ChapterCard(
  {
    Key key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.size,
    this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context)
  {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          )
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Step $chapterNumber : $name \n",
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: press,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget
{
  const BookInfo(
  {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cleaning",
                style: Theme.of(context).textTheme.display1,
              ),
              Text(
                "Breathing",
                style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "I bought my first Moleskine freshman year of college. The hard cover and smooth pages gave this organization-loving Virgo a jolt of excitement.",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundedButton(
                          text: "Asana",
                          verticalPadding: 10,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(score: 4.9)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          'images/mm2.png',
          height: 200,
        ),
      ],
    );
  }
}