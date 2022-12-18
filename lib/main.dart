import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Convex Bottom Navigation Bar"),
      centerTitle: true,),
      bottomNavigationBar: ConvexAppBar(
        items:[
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.alarm)
        ],
        initialActiveIndex: 0,
        elevation: 40,
        onTap: (index) {
          print(index);
        },
        ),
        
    );
  }
}