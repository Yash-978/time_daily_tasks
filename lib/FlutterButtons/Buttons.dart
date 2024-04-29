import 'package:android_studio_project/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main()
{
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Buttons(),
    );
  }
}
class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Text('Common Buttons',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Container(
            height: 350,
            width: 410,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(onPressed: (){

                    },child: Icon(Icons.add),),
                    FloatingActionButton(onPressed: (){

                    },child: Icon(Icons.remove),),
                    FloatingActionButton(onPressed: (){

                    },child: Text('hello')),
                    FloatingActionButton(onPressed: (){

                    },child: Text('hii')),
                    FloatingActionButton(onPressed: (){

                    },child: Icon(Icons.settings)),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   ElevatedButton(onPressed: (){

                   }, child: Row(
                     children: [
                       Icon(Icons.ac_unit),
                       Text('cooling'),
                     ],
                   )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.access_time_filled_rounded),
                        Text('Time'),
                      ],
                    )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.accessibility_rounded),
                        Text('Accessibility'),
                      ],
                    )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.adb),
                        Text('Android'),
                      ],
                    )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.add_call),
                        Text('Call'),
                      ],
                    )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.ac_unit),
                        Text('cooling'),
                      ],
                    )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.access_time_filled_rounded),
                        Text('Time'),
                      ],
                    )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.accessibility_rounded),
                        Text('Accessibility'),
                      ],
                    )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.adb),
                        Text('Android'),
                      ],
                    )),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.add_call),
                        Text('Call'),
                      ],
                    )),
                  ],
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}

