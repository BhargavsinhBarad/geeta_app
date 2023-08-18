import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to Bx Player",
            image: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTvvQdeb_LSlBT5l6H-2TZbWRauSRXFGA1zQ&usqp=CAU"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          // PageViewModel(
          //   title: "Welcome to Bx Player",
          //   image: Center(
          //     child: Container(
          //       height: double.infinity,
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage("lib/Image/11.jpg"),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
        done: Text("done"),
        onDone: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("isIntroVisited", true);
          Navigator.pushReplacementNamed(context, 'splash');
        },
        next: Text("Next"),
        showNextButton: true,
      ),
    );
  }
}
