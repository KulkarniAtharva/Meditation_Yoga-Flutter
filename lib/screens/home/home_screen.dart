import 'package:meditation_yoga/colorsfile.dart';
import 'file:///D:/AndroidStudioProjects/meditation_yoga/lib/screens/detail/detail_screen.dart';
import 'package:meditation_yoga/widget/book_rating.dart';
import 'package:meditation_yoga/widget/reading_card_list.dart';
import 'package:flutter/material.dart';
import 'package:meditation_yoga/widget/two_sided_rounded_button.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(
                              text: "What is you're \nasana ",
                              style: TextStyle(
                                fontSize: 30,
                              )),
                          TextSpan(
                            text: "today?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: "images/mm2.png",
                          title: "Channel-Cleaning Breath",
                          auth: "by: Atharva Kulkarni",
                          rating: 4.9,
                          pressDetails: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)
                                {
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "images/mm1.png",
                          title: "Extended Side Angle Pose",
                          auth: "Adwait Gondhalekar",
                          rating: 4.8,
                        ),
                      ],
                    ),
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
                                TextSpan(
                                    text: "Best of the ",
                                    style: TextStyle(
                                      fontSize: 25,
                                    )),
                                TextSpan(
                                  text: "day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ]),
                        ),
                        bestOfTheDayCard(size, context),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: "Relax"),
                              TextSpan(
                                text: "melodies...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Dropping into the Present Moment",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "14 min",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.queue_music,
                                                    size: 15,
                                                  ),
                                                  SizedBox(
                                                    width: 60,
                                                  ),
                                                  Icon(
                                                    Icons.skip_previous,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    Icons.pause_circle_outline,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    Icons.skip_next,
                                                    size: 20,
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Text("Next: Body Scan",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "images/mm6.jpg",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context)
  {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
              height: 195,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.43),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Live a more expressive life with this connective practice.",
                    style: TextStyle(
                      fontSize: 11,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Simple Meditation Ignite Creativity",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text("Atharva Kulkarni",
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "I bought my first Moleskine freshman year of college. The hard cover and smooth pages gave this organization-loving Virgo a jolt of excitement.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -27,
            top: -7,
            child: Image.asset("images/mm4.png",
              width: size.width * .40,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Start",
                radius: 24,
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}