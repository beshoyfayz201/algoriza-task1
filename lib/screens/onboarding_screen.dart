import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:task1/components/button.dart';
import 'package:task1/screens/register_screen.dart';

import '../components/regsternote.dart';

class OnboarrdingScreen extends StatefulWidget {
  const OnboarrdingScreen({Key? key}) : super(key: key);

  @override
  State<OnboarrdingScreen> createState() => _OnboarrdingScreenState();
}

class _OnboarrdingScreenState extends State<OnboarrdingScreen> {
  List<String> onboardTitles = [
    "Get food delivery to your doorstep asap",
    "Buy any food from your favority restaurant",
    "Enjoy"
  ];
  List<String> onboardTopics = [
    "we have a young and professional delivery team that will bring your food as soon as possible to our doorstep",
    "we are constatly adding your favorite restaurant throughout the territory and arround your area carefully selected",
    " "
  ];
  List p = [
    "assets/images/onboard1.png",
    "assets/images/onboard2.png",
    "assets/images/onboard3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //skip button
            Positioned(
                right: 20,
                width: 90,
                child: CustomButton(
                  color: Colors.orange.shade50,
                  label: "Skip",
                  onpressed: () {},
                  radius: 20,
                  txtColor: Colors.black,
                )),

            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  //logo
                  Text(
                    "7KRaVE",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //page view
                  Expanded(
                    child: PageIndicatorContainer(
                      indicatorColor: Colors.grey,
                      indicatorSelectorColor: Colors.amber,
                      shape: IndicatorShape.roundRectangleShape(
                          size: Size(20, 5), cornerSize: Size(10, 40)),
                      length: 3,
                      child: PageView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Image.asset(
                                  "assets/images/onboard$index.png",
                                  height: 250,
                                ),
                              ),
                              Text(
                                onboardTitles[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                onboardTopics[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),

                  //buttons
                  CustomButton(
                    color: Colors.teal,
                    label: "Get started",
                    onpressed: () {},
                    radius: 10,
                  ),
                  RegisterNote(
                      function: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => RegisterScreen())));
                      },
                      text1: "Don’t have an account ?",
                      text2: "Sign up")
                ],
              ),
            )
          ],
        ));
  }
}
