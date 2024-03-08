import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Center(child: Text('Page 2')));
  }
}
