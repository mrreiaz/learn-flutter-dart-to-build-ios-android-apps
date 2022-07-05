import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  void answerQuestion(){
    print("Answer given.");
  }


  @override
  Widget build(BuildContext context) {


    var questions = [
      'Whats your favorite color?',
      'Whats your favorite animal?'
      ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 2'),onPressed: ()=> print("object")),
            RaisedButton(child: Text('Answer 3'),onPressed: (){
                          //------------
                          print("object");

                          }
                        ),
          ],
        ),
      ),
    );
  }
}
