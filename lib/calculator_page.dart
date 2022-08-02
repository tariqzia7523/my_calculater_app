import 'package:flutter/material.dart';


class CalculatorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CalculatorPageClass();
  }
}
class CalculatorPageClass extends State<CalculatorPage>{

  int value1 = 0;
  int value2 = 0;
  String exprestion = "";
  String oprater = "";

  void setText(String text){
    if(text == "="){
      value2 = int.parse(exprestion);
        if(oprater == "+")
          exprestion = (value2 + value1).toString();
    }else if(text == "+" || text == "-" || text == "+" || text == "/"){
      oprater = text;
      value1 = int.parse(exprestion);
      exprestion = "";
    }else{
      exprestion += text;
    }
    setState(() {
      exprestion;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculaor Screen'),
          centerTitle: true,
        ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child : Column(

          children: [
            Expanded(
              flex: 3,
                child: Text(
                    '$exprestion',
                )
            ),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){
                                    setText("1");
                                  },
                                  child: Text('1'),
                            )),
                          ),
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){
                                    setText("2");
                                  },
                                  child: Text('2'),
                            )),
                          ),
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){
                                    setText("3");
                                  },
                                  child: Text('3'),
                            )),
                          ),
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){
                                    setText("+");
                                  },
                                  child: Text('+'),
                            )),
                          )
                        ],
                      ),
                    ),
                    Expanded(child : Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('4'),
                              )),
                        ),
                        Expanded(

                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('5'),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('6'),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('-'),
                              )),
                        )
                      ],
                    )),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){},
                                  child: Text('7'),
                            )),
                          ),
                          Expanded(

                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){},
                                  child: Text('8'),
                            )),
                          ),
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){},
                                  child: Text('9'),
                            )),
                          ),
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: ElevatedButton(
                                  onPressed: (){},
                                  child: Text('*'),
                            )),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('0'),
                              )),
                        ),
                        Expanded(

                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  setText("=");
                                },
                                child: Text('='),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('C'),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Text('/'),
                              )),
                        )
                      ],
                    ))
                  ],
                )
            )
          ],
        )
      ),
    );
  }

}

