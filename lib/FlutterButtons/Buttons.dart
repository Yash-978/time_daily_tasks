
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
/*
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
                    OutlinedButton(onPressed: (){

                    }, child: Text('Hey')),
                    OutlinedButton(onPressed: (){

                    }, child: Text('hola')),
                    OutlinedButton(onPressed: (){

                    }, child: Text('Bonjour')),
                    OutlinedButton(onPressed: (){

                    }, child: Text('Hello')),
                    OutlinedButton(onPressed: (){

                    }, child: Text('Ciao')),
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
*/

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: h*0.400,
                width: w*0.950,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(onPressed: (){

                        },
                          child: Icon(Icons.add),),
                        ElevatedButton(onPressed: (){

                        }, child: Text('Heyy'),),
                        OutlinedButton(onPressed: (){

                        }, child: Text('Namaste')),
                        FilledButton(onPressed: (){

                        }, child: Text('Hola')),
                        FilledButton.tonal(onPressed: (){

                        }, child: Text('Bonjour')),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(onPressed: (){

                        },
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Text('Add'),

                            ],
                          ),),
                        ElevatedButton(onPressed: (){

                        }, child: Row(
                          children: [
                            Icon(Icons.settings),
                            Text('Hallo'),
                          ],
                        ),),
                        OutlinedButton(onPressed: (){

                        }, child: Row(
                          children: [
                            Icon(Icons.exit_to_app_outlined),
                            Text('Byee'),
                          ],
                        )),
                        FilledButton(onPressed: (){

                        }, child: Row(
                          children: [
                            Icon(Icons.waving_hand),
                            Text('Ciao'),
                          ],
                        )),
                        FilledButton.tonal(onPressed: (){

                        }, child: Row(
                          children: [
                            Icon(Icons.emoji_people),
                            Text('Ni Hao'),
                          ],
                        )),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(onPressed: (){

                        },
                          child: Icon(Icons.remove),),
                        ElevatedButton(onPressed: (){

                        }, child: Icon(Icons.access_time_filled_outlined),),
                        OutlinedButton(onPressed: (){

                        }, child: Icon(Icons.ac_unit_rounded)),
                        FilledButton(onPressed: (){

                        }, child: Icon(Icons.account_balance_rounded)),
                        FilledButton.tonal(onPressed: (){

                        }, child: Icon(Icons.account_circle_outlined)),
                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: h*0.150,
                width: w*0.950,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton.small(onPressed: (){

                    },
                      child: Icon(Icons.add),),
                    FloatingActionButton(onPressed: (){

                    },
                      child: Icon(Icons.access_time_filled_rounded),),
                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Create',style: TextStyle(fontSize: 20),),
                      ],
                    )),

                    FloatingActionButton.large(onPressed: (){

                    },
                      child: Icon(Icons.access_time_filled_rounded),),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: h*0.200,
                width: w*0.950,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 45,
                          width: 320,
                          decoration: BoxDecoration(
                            color: Color(0xffEADDFF),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.check),
                              Text('Day'),
                              Divider(
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              Icon(Icons.calendar_view_week),
                              Text('Week'),
                              Divider(
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              Icon(Icons.calendar_view_month),
                              Text('Month'),Divider(
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              Icon(Icons.calendar_month_outlined),
                              Text('Year'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(0xffEADDFF),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('XS'),
                              Divider(
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              // Icon(Icons.calendar_view_week),
                              Text('S'),
                              Divider(
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              // Icon(Icons.calendar_view_month),
                              Text('M'),
                              Divider(
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              Icon(Icons.check),
                              Text('L'),
                              Divider(
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              Icon(Icons.check),
                              Text('XL'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

