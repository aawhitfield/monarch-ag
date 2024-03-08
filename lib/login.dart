import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';

import 'page3.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email'),
                TextFormField(
                  controller: emailController,
                  decoration:
                      InputDecoration(enabledBorder: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 25),
                Text('Password'),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration:
                      InputDecoration(enabledBorder: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 85),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomePage()));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
