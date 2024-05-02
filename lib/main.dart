import 'package:flutter/material.dart';
import 'package:timer_dailyt_ask/clock/strapClock.dart';
import '5.1butten_task/button.dart';
import 'clock/analogue_clock.dart';
import 'clock/digital_app.dart';
void main()
{
   runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
     // home: Digital_App(),
       routes: {
           '/': (context) => Digital_App(),
        '/clock':(context)=> HomePage(),
        '/analogue':(context)=>  AnalougeClock(),
         '/strap':(context)=>StrapClock(),
     },
    );
  }
}



