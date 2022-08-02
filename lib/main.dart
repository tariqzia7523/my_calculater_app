import 'package:flutter/material.dart';
import 'package:my_calculater_app/Constants.dart';
import 'package:my_calculater_app/second_screen.dart';

import 'ListPage.dart';
import 'calculator_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      home: Scaffold(

        backgroundColor: getBgColor(),
        // body: HomePage()
        body: NewListPage()
        // body: CalculatorPage()
        ),
    );
  }

}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageClass();
  }
}



class HomePageClass extends State<HomePage>{
  int counter = 0;

  void setIncrementCounter(bool flag){
    if(flag)
      counter++;
    else
      counter--;
    setState(() {
      counter;
    });
  }
  void reset(){
    if(counter == 0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("already rested"),
      ));
    }

    counter = 0;
    setState(() {
      counter;
    });
  }
  void intentCall() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListPage()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Counter App',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Button Pressed $counter times'),
            ElevatedButton(onPressed: (){
              reset();
            }, child: Image.network(
                'https://media.istockphoto.com/photos/romantic-couple-dating-in-pub-at-night-picture-id1058684894?k=20&m=1058684894&s=612x612&w=0&h=3fZ20mPsmk60vi6z81RN_B9nc20k6u0JlfPFZYWGHlU=',
                height: 300.0,width: 300)
            ),
            ElevatedButton(onPressed: (){
              setIncrementCounter(false);
            }, child: Text(
              '-')
            ),
            ElevatedButton(onPressed: (){
              intentCall();
            }, child: Text(
                '-')
            )
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setIncrementCounter(true);
        },
        child: Text('Click'),
      ),
    );
  }



}
