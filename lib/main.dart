import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(



            children: [
              SizedBox(height: 30,),
              CarouselSlider(
                  items: [
                    Container(
                      //height: 200,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      //color: Colors.red,
                      child: Text("1"),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: NetworkImage("https://cdn.pixabay.com/photo/2023/09/29/07/52/mountains-8283189_640.jpg"))
                      ),
                    ),


                    Container(
                     // height: 200,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      //color: Colors.green,
                      child: Text("2"),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://cdn.pixabay.com/photo/2023/09/03/17/28/butterfly-8231160_640.jpg"))
                      ),
                    ),

                    Container(
                      // height: 200,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      //color: Colors.blue,
                      child: Text("3"),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://cdn.pixabay.com/photo/2023/09/29/10/21/nuts-8283540_1280.jpg"))
                      ),
                    ),

                    Container(
                      // height: 200,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      //color: Colors.orange,
                      child: Text("4"),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit:BoxFit.cover,
                              image: NetworkImage("https://cdn.pixabay.com/photo/2023/10/02/16/09/bike-8289452_640.jpg"))
                      ),
                    ),

                  ],
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16/9,
                    autoPlayInterval: Duration(seconds:2 ),
                    autoPlayAnimationDuration: Duration(milliseconds:800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlay: true,
                    initialPage: 0,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                  )
              ),
              //CarouselSliderState(carouselController)
            ],
          ),
    );
  }
}

