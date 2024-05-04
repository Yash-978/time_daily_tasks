import 'dart:async';
// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StrapWatch extends StatefulWidget {
  const StrapWatch({super.key});

  @override
  State<StrapWatch> createState() => _StrapWatchState();
}

class _StrapWatchState extends State<StrapWatch> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        datetime = DateTime.now();
        if (datetime.hour > 11) {
          meridian = 'PM';
        } else {
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
        switch (datetime.month) {
          case 1:
            month = 'January';
            break;
          case 2:
            month = 'February';
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
            month = 'September';
            break;
          case 10:
            month = 'October';
            break;
          case 11:
            month = 'November';
            break;
          case 12:
            month = 'December';
            break;
        }
      });
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://images.pexels.com/photos/2098427/pexels-photo-2098427.jpeg?auto=compress&cs=tinysrgb&w=600')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.white,
                      value: datetime.second / 60,
                      strokeWidth: 7,
                    ),
                  ),
                  SizedBox(
                    height: 230,
                    width: 230,
                    child: CircularProgressIndicator(
                      color: Colors.blueAccent,
                      value: datetime.minute / 60,
                      strokeWidth: 7,
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    width: 220,
                    child: CircularProgressIndicator(
                      color: Colors.deepOrange,
                      value: ((datetime.hour % 12 + datetime.minute/60)/12),
                      strokeWidth: 7,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(Day,style: TextStyle(
                      fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
                    ),),
                      Text('$month ${datetime.day},${datetime.year}' ,style: TextStyle(
                      fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
                    ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${datetime.hour%12}:${datetime.minute}:${datetime.second}' ,style: TextStyle(
                            fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(' $meridian' ,style: TextStyle(
                              fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      )

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

DateTime datetime = DateTime.now();
String Day = '';
String meridian = '';
String month='';


