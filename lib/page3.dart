import 'package:flutter/material.dart';
import 'package:helloworld/create_account.dart';
import 'package:helloworld/login.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const LogIn()));
            },
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateAccount()));
            },
            child: const Text(
              'Create Account',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      )),
    );
  }
}
