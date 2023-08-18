import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gita/utils/jsonmodel.dart';

import '../utils/model.dart';

class shlok extends StatefulWidget {
  const shlok({super.key});

  @override
  State<shlok> createState() => _shlokState();
}

class _shlokState extends State<shlok> {
  @override
  Widget build(BuildContext context) {
    ad d1 = ModalRoute.of(context)!.settings.arguments as ad;
    return Scaffold(
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
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    height: 80,
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          WavyAnimatedText(d1.adhyay),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: FutureBuilder(
                  future: rootBundle.loadString("lib/json/data.json"),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.hasError.toString()),
                      );
                    } else if (snapshot.hasData) {
                      String jsondata = snapshot.data;
                      List maydata = jsonDecode(jsondata);
                      List<jsonmodel> data = maydata
                          .map(
                            (e) => jsonmodel.json(data: e),
                          )
                          .toList();
                      return ListView.builder(
                        itemBuilder: (context, i) => (d1.ch == data[i].ch)
                            ? GestureDetector(
                                onTap: () {
                                  jsonmodel j1 = jsonmodel(
                                      ch: data[i].ch,
                                      en: data[i].en,
                                      guj: data[i].guj,
                                      hi: data[i].hi,
                                      san: data[i].san,
                                      verse: data[i].verse);
                                  Navigator.pushNamed(context, 'details',
                                      arguments: j1);
                                },
                                child: Container(
                                  height: 200,
                                  width: double.infinity,
                                  margin: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUKfJS4TLa2CcLTdiYvTyNuwBUtX8SQJG69g&usqp=CAU',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Text(
                                    data[i].san,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        itemCount: data.length,
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
