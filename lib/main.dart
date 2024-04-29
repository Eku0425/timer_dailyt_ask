import 'package:flutter/material.dart';
import '5.1butten_task/button.dart';
import 'clock/digital_app.dart';
void main()
{
   runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      routes: {
          '/': (context) =>Digital_App(),
        '/clock':(context)=>HomePage(),

    },
    );
  }
}



