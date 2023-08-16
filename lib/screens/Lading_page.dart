import 'package:flutter/material.dart';

import '../widgets/navigation.dart';

class Ladingpage extends StatefulWidget {
  const Ladingpage({super.key});
  @override
  State<Ladingpage> createState() => _LadingpageState();
  // TODO: implement createState
}

class _LadingpageState extends State<Ladingpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "img1.png",
            height: height * 0.75,
            width: width,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: 78,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "log In with instagram",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "mrkhosh",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            "img2.png",
                            height: 13,
                            width: 13,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("img3.png"),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              "SWitch Account",
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
