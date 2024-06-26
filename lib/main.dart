import 'package:flutter/material.dart';

import 'Analogue_clock/analogueClock.dart';
import 'Strap_watch/strap_Watch.dart';
import 'TimerApp/TimerApp.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StrapWatch(),
      initialRoute: '/digital',
      routes: {
        '/digital':(context)=>CloakApp(),
        '/analog':(context)=>AnalogueClock(),
        '/strap':(context)=>StrapWatch(),
      },
    );
  }
}
