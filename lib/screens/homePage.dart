// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather_2/models/weather.dart';
import 'package:weather_2/repositories/weather_repository.dart';

import '../list_of_details.dart';

var textColor = const Color.fromARGB(180, 0, 0, 0);

class CityPage extends StatefulWidget {
  const CityPage({Key? key}) : super(key: key);

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  // final _data = Data();
  final controller = TextEditingController();
  Weather? weatherResponse;
  int currentIndex = 0;
// List<Widget> options = <Widget>[
//       const Text('Detailes'),
//       Padding(
//         padding: const EdgeInsets.all(8),
//         child: Center(
//           child: SizedBox(
//             width: 200,
//             child: TextField(
//               onEditingComplete: search,
//               controller: controller,
//               textAlign: TextAlign.center,
//               decoration: const InputDecoration(
//                 labelText: 'City',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//         ),
//       )
//     ];
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
        // options.elementAt(currentIndex),
        const WeatherBox(),
        const DetailText(),
        const Divider(
          height: 5,
          thickness: 2,
          color: Colors.grey,
          endIndent: 40,
          indent: 40,
        ),
        const ListOfDetails(),
      ]),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: currentIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     )
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      // )
    );
  }

  // void search() async {
  //   final response = await _data.getWeather(controller.text);

  //   weatherResponse = response;
  // }
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
  const WeatherBox({Key? key}) : super(key: key);
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
                style: TextStyle(fontSize: 40, color: textColor),
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
