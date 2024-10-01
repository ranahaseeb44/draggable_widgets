import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  DraggableWidgetScreen extends StatefulWidget {
  const DraggableWidgetScreen({Key? key}) : super(key: key);

  @override
  _DraggableWidgetScreenState createState() => _DraggableWidgetScreenState();
}

class _DraggableWidgetScreenState extends State<DraggableWidgetScreen> {
  double left=0.0 ;
      double  top=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('Draggable Widget'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: left ,
            top: top ,

            child: GestureDetector(
            onPanUpdate:(details){
left=max(0, left+details.delta.dx);
top=max(0, top+details.delta.dy);
setState(() {

});
            },
            onTap: (){

            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(50)),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
