import 'dart:math';

import 'package:flutter/material.dart';

class NewListPage extends StatefulWidget {

  const NewListPage({Key? key}) : super(key: key);

  @override
  State<NewListPage> createState() => _NewListPageState();

}

class _NewListPageState extends State<NewListPage> {

  List<String> data = [
    'https://www.ohyaaro.com/wp-content/uploads/2020/01/just.hasley.things_79959394_1743350905800518_776625533333308422_n.jpg',
    'https://preview.redd.it/2p4ig78kdyu41.jpg?auto=webp&s=96914412b13cee6301a039569ec437825bd3665b',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSupP6FvkRMgi0LC8t90Bxupub_wzeaknhASQ&usqp=CAU',
    'https://thumbs.dreamstime.com/b/aerial-view-lago-antorno-dolomites-lake-mountain-landscape-alps-peak-misurina-cortina-di-ampezzo-italy-reflected-103752677.jpg',
    'https://www.adorama.com/alc/wp-content/uploads/2018/11/landscape-photography-tips-yosemite-valley-feature.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[800],
        title: Text('List Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: data.map((dataitem) {
          return Image.network(dataitem);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          data.add('https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=');
          data.shuffle(Random(2));
          setState(() {
            data;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
