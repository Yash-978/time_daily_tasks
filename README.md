# android_studio_project


<h3 align = "center"> 1. Flutter buttons </h3>

<p align = "center">
<img src= "https://github.com/Yash-978/time_daily_tasks/assets/147479013/85a01de1-df25-48da-af6b-128c40873372" width=35%
height=22% >
</p>

<h3 align = "center"> 2. Digital Clock App </h3>

<p align = "center">
<img src= "https://github.com/Yash-978/time_daily_tasks/assets/147479013/b342b386-3974-4526-ae6f-e6744a3fef7d" width=35%
height=22% >
</p>
<div align ="center">
<video src= "https://github.com/Yash-978/time_daily_tasks/assets/147479013/815d53fe-fcd7-4136-a857-17e7a3a31b14" width=35%
height=22% >
</div>
    
<h3 align = "center"> 3. Analogue Clock App </h3>

<p align = "center">
<img src= "https://github.com/Yash-978/time_daily_tasks/assets/147479013/707068e2-1cdb-40b2-a081-c980adf44b3b" width=35%
height=22% >
</p>

<div align = "center">
<video src= "https://github.com/Yash-978/time_daily_tasks/assets/147479013/d560e525-b400-406c-b786-3bcb50244ec7" width=35%
height=22% >
</div>

<div align = "center">
<video src= "https://github.com/Yash-978/time_daily_tasks/assets/147479013/5348efe5-0ec8-4678-91eb-43ef1cf6024d" width=35%
height=22% >
</div>














# 1. What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. In traditional synchronous programming, tasks are executed one after another, and the program waits for each task to finish before proceeding to the next one.


# 2. What is Future Class ?

In `Dart` , a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way to handle the result or error when it becomes available. The Future can be in one of three states: uncompleted, completed with a value, or completed with an error with talk about in detail in other blog.

# 3. What is Duration class & Future.delayed() constructor with Example ?


The Duration class represents a span of time. It allows you to work with time intervals, specifying durations in terms of hours, minutes, seconds, and microseconds. Dart's Duration class provides methods for arithmetic operations such as addition, subtraction, and comparison. Here's an example of how you can use the Duration class.

```bash
import'Dart:io';
void main()
{
    Future.delayed(Duration
    (seconds:2),()
    { 
      print("hello flutter");
    }
    ); print("hello php");
}

```

# 4 What is the Use of the async & await keyword?

 `async`
 * In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner.

* The async keyword is used to mark a function as asynchronous. An asynchronous function can perform tasks that may take some time to complete, such as fetching data from a network or reading from a file. The async keyword allows the function to use the await keyword inside it.

# 5 What is Recursion ? With Example. 

Recursion is a programming technique where a method can call itself as part of its calculation. 

```bash
  
import 'dart:async';
import 'dart:io';
void main()
{
  var count=5;
  print ('hii');
  Timer.periodic(Duration(seconds: 1), (timer) { 
    
    print(timer.tick);
    count --;
      if (count==0)
      {
       print('Dead end');
       timer.cancel();
      }
  });
}
```

# 6 What is Timer class with example ?

The Timer class in Dart's async library creates a countdown timer that can be configured to fire once or repeatedly.

``` bash

import 'dart:async';
import 'dart:io';
void main()
{
  print ('hii');
  Timer(Duration(seconds: 3), () {
    print('bye');

   });
}
```
# 7 What is Timer.periodic and use with Example?

In Dart, Timer.periodic is a constructor that creates a periodic timer that repeatedly calls a specified callback function with a fixed time interval between each call.

``` bash

import 'dart:async';
import 'dart:io';
void main()
{
  print("Hii");
  Timer.periodic(Duration(seconds: 1), (timer) {print("bye...");});
}
```
