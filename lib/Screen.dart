import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _HomepageState();
}

class _HomepageState extends State<Screen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Text(
            " navigation",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(children: [
          Expanded(
            child: Container(
              color: _currentIndex == 0
                  ? Color.fromARGB(255, 255, 255, 13)
                  : _currentIndex == 1
                      ? Color.fromARGB(255, 201, 239, 32)
                      : Color.fromARGB(255, 211, 224, 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                  color: _currentIndex == 0
                      ? Colors.redAccent
                      : Color.fromARGB(255, 11, 168, 208),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                  color: _currentIndex == 1
                      ? Colors.green
                      : Color.fromARGB(255, 71, 218, 8),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                  color: _currentIndex == 2
                      ? Color.fromARGB(255, 234, 73, 167)
                      : Color.fromARGB(255, 130, 218, 42),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        "message",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
