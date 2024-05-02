import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/global.dart';

class Digital_App extends StatefulWidget {
  const Digital_App({super.key});

  @override
  State<Digital_App> createState() => _Digital_AppState();
}

class _Digital_AppState extends State<Digital_App> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
        if (dateTime.hour > 12) {
          time = 'PM';
        } else {
          time = 'AM';
        }
        switch (dateTime.weekday) {
          case 1:
            day = 'Mon';
            break;
          case 2:
            day = 'Tue';
            break;
          case 3:
            day = 'Wed';
            break;
          case 4:
            day = 'Thu';
            break;
          case 5:
            day = 'Fri';
            break;
          case 6:
            day = 'Sat';
            break;
          case 7:
            day = 'Sun';
            break;
        }
        switch (dateTime.month) {
          case 1:
            month = 'Jan';
            break;
          case 2:
            month = 'Feb';
            break;
          case 3:
            month = 'March';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'August';
            break;
          case 9:
            month = 'Sept';
            break;
          case 10:
            month = 'Oct';
            break;
          case 11:
            month = 'Nov';
            break;
          case 12:
            month = 'Dec';
            break;
        }
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/img/1.jpg'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Icon(Icons.lock,size: 25,color: Colors.white,),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            '${dateTime.hour % 12} : ${dateTime.minute}:${dateTime.second}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '$time',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: day,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ', ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '${dateTime.day} ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: month,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 190,
                  width: 190,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.rotate(
                        angle: (dateTime.hour % 12 + dateTime.minute/60) * 30 * pi/180,
                        child: Center(
                          child: VerticalDivider(
                            thickness: 3,
                            color: Colors.white,
                            indent: 50,
                            endIndent: 90,
                          ),
                        ),
                        ),

                      ...List.generate(
                        60,
                            (index) => Transform.rotate(
                          angle:( (index + 1)*6*pi)/180,
                          child: ((index+1)%5==0)
                              ?
                          const VerticalDivider(
                            thickness: 4,
                            color: Colors.red,
                            indent: 0,
                            endIndent: 170,
                          )
                              :
                          VerticalDivider(
                            thickness: 4,
                            color: Colors.white70,
                            indent: 0,
                            endIndent: 170,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        ),

                      ),

                      Transform.rotate(
                        angle: (dateTime.minute * 6 * pi) / 180,
                        child: Center(
                          child: VerticalDivider(
                            thickness: 3,
                            color: Colors.white,
                            indent: 30,
                            endIndent: 90,
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: (dateTime.second * 6 * pi) / 180,
                        child: Center(
                          child: VerticalDivider(
                            thickness: 3,
                            color: Colors.red,
                            indent: 20,
                            endIndent: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 360),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          color: Colors.blueGrey,
                        ),
                        child: Icon(Icons.camera_alt_outlined,size: 30,color: Colors.black,),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          color: Colors.blueGrey,
                        ),
                        child: Icon(Icons.phone,size: 30,color: Colors.black,),
                      ),
                    ],

                  ),
                ),
              ],
            ),
          ),

        ),

      ),
    );
  }
}
