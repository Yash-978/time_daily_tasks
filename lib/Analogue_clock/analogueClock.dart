import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
class AnalogueClock extends StatefulWidget {
  const AnalogueClock({super.key});

  @override
  State<AnalogueClock> createState() => _AnalogueClockState();
}

class _AnalogueClockState extends State<AnalogueClock> {
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
      });
    });
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          // shape: CircularNotchedRectangle(),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton.tonal(onPressed: (){
                Navigator.pushNamed(context, '/digital');
              }, child: Text('Digital')),
              FilledButton.tonal(onPressed: (){
                Navigator.pushNamed(context, '/analog');

              }, child: Text('Analog')),
              FilledButton.tonal(onPressed: (){
                Navigator.pushNamed(context, '/strap');

              }, child: Text('Strap')),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              // opacity: 0,
              fit: BoxFit.cover,
              // image: AssetImage('Asset/images/astronaut-4106766_1920.jpg'),
              image: NetworkImage(
                  'https://images.pexels.com/photos/2098427/pexels-photo-2098427.jpeg?auto=compress&cs=tinysrgb&w=600'),//https://images.unsplash.com/photo-1495344517868-8ebaf0a2044a?q=80&w=2153&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       '${datetime.hour % 12} : ${datetime.minute} : ${datetime.second}',
              //       style: TextStyle(fontSize: 50, color: Colors.white),
              //     ),
              //     Container(
              //       // height: 10,
              //       margin: EdgeInsets.only(top: 20),
              //       child: Text(
              //         '  ${meridian}',
              //         style: TextStyle(fontSize: 25, color: Colors.white),
              //       ),
              //     ),
              //   ],
              // ),
              // Text(
              //   '${Day}',
              //   style: TextStyle(fontSize: 35, color: Colors.white),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    )),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.cyan,
                      ),
                    ),
                    ...List.generate(
                      60,
                          (index) => Transform.rotate(
                          angle: ((index + 1) * 6 * pi) / 180,
                          child: ((index + 1) % 5 == 0)
                              ? VerticalDivider(
                            thickness: 3,
                            color: Colors.red,
                            endIndent: 170,
                            indent: 2,
                          )
                              : VerticalDivider(
                            thickness: 2,
                            color: Colors.white,
                            endIndent: 180,
                            indent: 3,
                          )),
                    ),
                    Transform.rotate(
                      angle: (datetime.hour % 12 + datetime.minute / 60) *
                          30 *
                          pi /
                          180,
                      child: VerticalDivider(
                        thickness: 4,
                        color: Colors.amber,
                        endIndent: 97,
                        indent: 40,
                      ),
                    ),
                    Transform.rotate(
                      angle: datetime.minute * (6 * pi) / 180,
                      child: VerticalDivider(
                        thickness: 3,
                        color: Colors.cyan,
                        endIndent: 97,
                        indent: 25,
                      ),
                    ),
                    Transform.rotate(
                      angle: datetime.second * (6 * pi) / 180,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.white,
                        endIndent: 97,
                        indent: 17,
                      ),
                    ),
                  ],
                ),
              )
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
