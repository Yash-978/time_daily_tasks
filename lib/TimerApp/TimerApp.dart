import 'dart:async';


import 'package:flutter/material.dart';

class CloakApp extends StatefulWidget {
  const CloakApp({super.key});

  @override
  State<CloakApp> createState() => _CloakAppState();
}

class _CloakAppState extends State<CloakApp> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        datetime = DateTime.now();
        if (datetime.hour > 11) {
          meridian = 'PM';
        }
        else
        {
          meridian = 'AM';
        }
        switch (datetime.weekday) {
          case 1:
            Day = 'Monday';
            break;
          case 2:
            Day = 'Tuesday';
            break;
          case 3:
            Day = 'Wednesday';
            break;
          case 4:
            Day = 'Thursday';
            break;
          case 5:
            Day = 'Friday';
            break;
          case 6:
            Day = 'Saturday';
            break;
          case 7:
            Day = 'Sunday';
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
              image: DecorationImage(
            fit: BoxFit.cover,
            // image: AssetImage('Asset/images/astronaut-4106766_1920.jpg'),
            image: NetworkImage(
                'https://i.pinimg.com/236x/b7/44/dc/b744dca20792b2d10849decf9b3750e0.jpg'),
          ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${datetime.hour % 12} : ${datetime.minute} : ${datetime.second}',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  Container(
                    // height: 10,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      '  ${meridian}',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ],
              ),

              Text(
                '${Day}',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

DateTime datetime = DateTime.now();
String Day = '';
String meridian = '';
