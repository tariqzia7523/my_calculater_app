import 'package:flutter/material.dart';

class ListPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SecondPageClass();
  }


}
class SecondPageClass extends State<ListPage>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second screen',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(5.0),
                child : CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1526547541286-73a7aaa08f2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                ),
              ),
            ),
            Text(
                'Name',
              style: TextStyle(
                color: Colors.teal,
                backgroundColor: Colors.grey
              ),
            ),
            SizedBox(height:  10.0),
            Text(
              'Name',
              style: TextStyle(
                  color: Colors.teal,
                  backgroundColor: Colors.grey
              ),
            ),
            Icon(
              Icons.location_on,
              color: Colors.green,
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Image.asset('assets/reload.png')
                      ),
                    ),
                ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: ElevatedButton(
                          onPressed: (){}, 
                          child: Image.asset('assets/reload.png')
                      ),
                    )
                ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Image.asset('assets/reload.png')
                      ),
                    )
                ),
              ],
            )
          ],

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Text('Click'),
      ),
    );
  }

}