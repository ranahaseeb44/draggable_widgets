import 'package:flutter/material.dart';
import 'dragable_widget.dart'; // Import your draggable widget screen here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Draggable Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DraggableWidgetScreen(),
    );
  }
}
