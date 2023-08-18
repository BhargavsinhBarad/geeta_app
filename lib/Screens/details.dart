import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../utils/jsonmodel.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  bool English = false;
  bool Hindi = false;
  bool Gujarti = false;
  @override
  Widget build(BuildContext context) {
    jsonmodel jsm = ModalRoute.of(context)!.settings.arguments as jsonmodel;
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
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
                          fit: BoxFit.cover,
                          opacity: 0.75)),
                  child: Center(
                    child: Text(
                      jsm.san,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            English = !English;
                          },
                        );
                      },
                      child: Text("English"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Hindi = !Hindi;
                        });
                      },
                      child: Text("Hindi"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Gujarti = !Gujarti;
                        });
                      },
                      child: Center(child: Text("Gujarati")),
                    ),
                  ],
                ),
                (English == true)
                    ? Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
                                fit: BoxFit.cover,
                                opacity: 0.75)),
                        child: Center(
                          child: Text(
                            jsm.en,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      )
                    : Container(),
                (Hindi == true)
                    ? Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
                                fit: BoxFit.cover,
                                opacity: 0.75)),
                        child: Center(
                          child: Text(
                            jsm.hi,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      )
                    : Container(),
                (Gujarti == true)
                    ? Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
                                fit: BoxFit.cover,
                                opacity: 0.75)),
                        child: Center(
                          child: Text(
                            jsm.guj,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
