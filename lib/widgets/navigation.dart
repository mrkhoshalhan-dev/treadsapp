import 'package:flutter/material.dart';
import 'package:trez/screens/home_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  List page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 27, 
                  color: index==0 ? Colors.black:Colors.grey,
               
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Icon(
                  Icons.search,
                size: 27, 
                color: index==1 ? Color.fromARGB(255, 0, 0, 0):Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Icon(
                  Icons.edit_note,
                  size: 27, 
                  color: index==2 ? Colors.black:Colors.grey,
               
                ),
              ),
GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  size: 27, 
                  color: index==3 ? Colors.black:Colors.grey,
               
               
                ),
              ),

GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Icon(
                  Icons.person_2_outlined,
                  size: 27,
                   color: index==4 ? Colors.black:Colors.grey,
               
               
                ),
              ),
            ],
          ),
        ),
      ),
      body: page[index],
    );
  }
}
