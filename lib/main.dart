import 'package:meditation_yoga/screens/home_screen.dart';
import 'package:meditation_yoga/widget/rounded_button.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation & Yoga',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: Color(0xFF393939),
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.display3,
                children: [
                  TextSpan(
                    text: "Medit & ",
                  ),
                  TextSpan(
                    text: "Yoga.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: RoundedButton(
                text: "start relaxing",
                fontSize: 20,
                press: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)
                      {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}