// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'list_of_details.dart';

var textColor = const Color.fromARGB(180, 0, 0, 0);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> options = <Widget>[
    const Text('HomeScreen'),
    const Center(
      child: TextField(
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Day and Hour',
            style: TextStyle(color: Color.fromARGB(180, 0, 0, 0)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 253, 250, 241),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color.fromARGB(180, 0, 0, 0),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              color: const Color.fromARGB(180, 0, 0, 0),
            ),
          ],
        ),
        body: Column(children: [
          options.elementAt(currentIndex),
          const WeatherBox(),
          const DetailText(),
          const Divider(
            height: 5,
            thickness: 3,
            color: Colors.grey,
            endIndent: 40,
            indent: 40,
          ),
          const ListOfDetails(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            )
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}

class DetailText extends StatelessWidget {
  const DetailText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'D E T A I L S',
      style: TextStyle(fontSize: 25, color: Color.fromARGB(150, 0, 0, 0)),
    );
  }
}

class WeatherBox extends StatelessWidget {
  const WeatherBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      height: 300,
      decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 3),
              blurRadius: 3,
            ),
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Monday',
                style: TextStyle(fontSize: 18, color: textColor),
              ),
              Icon(
                Icons.calendar_today_outlined,
                color: textColor,
              )
            ],
          ),
          Row(
            children: [
              Text(
                '16:03',
                style: TextStyle(fontSize: 18, color: textColor),
              ),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2°',
                style: TextStyle(fontSize: 50, color: textColor),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 0,
                    primary: const Color.fromARGB(38, 63, 63, 63)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Be Prepared',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.umbrella,
                      color: Colors.white70,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
