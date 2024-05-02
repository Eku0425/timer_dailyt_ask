import 'package:flutter/material.dart';

import '../utils/global.dart';

class StrapClock extends StatefulWidget {
  const StrapClock({super.key});

  @override
  State<StrapClock> createState() => _StrapClockState();
}

class _StrapClockState extends State<StrapClock> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('Assets/img/1.jpg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 0.01),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 240,
                      width: 240,
                      child: CircularProgressIndicator(
                        color: Colors.deepOrange,
                        value: CurrentTime.second / 60,
                        strokeWidth: 5,
                      ),
                    ),
                    SizedBox(
                      height: 220,
                      width: 220,
                      child: CircularProgressIndicator(
                        color: Colors.green,
                        value:
                        ((CurrentTime.hour % 12 + CurrentTime.minute / 60) /
                            12),
                        strokeWidth: 6.5,
                      ),
                    ),
                    SizedBox(
                      height: 230,
                      width: 230,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        value: CurrentTime.minute / 60,
                        strokeWidth: 7,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Day,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${CurrentTime.day} $Month ,${CurrentTime.year}',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${CurrentTime.hour }:${CurrentTime.minute}:${CurrentTime.second}',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                ' $meridian',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// DateTime CurrentTime = DateTime.now();
// String meridian = '';
// String Day = '';
// String Month = '';
//

