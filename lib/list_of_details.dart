import 'package:flutter/material.dart';

import 'screens/homePage.dart';

class ListOfDetails extends StatelessWidget {
  const ListOfDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> percent = ['0%', '50%', '70%', '100%', '100%', '100%', '100%'];
    List<String> daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sat', 'Sun'];
    return Expanded(
      child: ListView.builder(
          itemCount: daysOfWeek.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      daysOfWeek[index],
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              percent[index],
                              style: TextStyle(fontSize: 18, color: textColor),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.ac_unit),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Temp')
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
