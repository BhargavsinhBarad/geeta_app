import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gita/utils/model.dart';
import '../utils/list.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Home page"),
        //   centerTitle: true,
        // ),
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://iphoneswallpapers.com/wp-content/uploads/2023/03/Cute-Krishna-iPhone-Wallpaper-HD.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    height: 80,
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          WavyAnimatedText("Adhyay"),
                          // TyperAnimatedText('Welcome toApp'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.6,
                    viewportFraction: 0.7,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(seconds: 2),
                  ),
                  items: [
                    ...images
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              ad a = ad(
                                  adhyay: e['adhyay'],
                                  ch: e['ch'],
                                  image: e['image']);
                              Navigator.pushNamed(context, 'shlok',
                                  arguments: a);
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    e['image'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Text(
                                " ${e['ch']}  ${e['adhyay']}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
