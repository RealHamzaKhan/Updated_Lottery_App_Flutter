import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Icon myicon=Icon(Icons.track_changes_outlined);
  String result='Try Your Luck by pressing button';
  int winning_number=5;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lottery App'),
      centerTitle: true,),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text('Lottery winning number is $winning_number',
              style: const TextStyle(
                fontFamily: 'Georgia',
                fontSize: 20,
              ),),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myicon,
                    const SizedBox(height: 30,),
                    Text('$result',
                    textAlign: TextAlign.center,
                    style:const TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 15,
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        int random=Random().nextInt(10);
       winning_number=Random().nextInt(10);
        print(random);
        winning_number==random?result='Congargulation\nyou had won the lottery':result='Better luck next time your number is $random\nTry again';
        winning_number==random?myicon=const Icon(Icons.done_all,color: Colors.green):myicon=const Icon(Icons.warning,color: Colors.red,);
        setState((){});
      },
      child: Icon(Icons.restart_alt),),
    );
  }
}

