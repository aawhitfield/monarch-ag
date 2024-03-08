import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/page3.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomTextField('First Name', "Please enter a first name", controller: firstNameController),
              SizedBox(height: 14),
              CustomTextField('Last Name', "Please enter a last name", controller: lastNameController),
              SizedBox(height: 14),
              CustomTextField('Email', "Please enter an email", controller: emailController),
              SizedBox(height: 14),
              CustomTextField('Username', "Please enter a username", controller: usernameController),
              SizedBox(height: 14),
              CustomTextField('Password', "Please enter a password", controller: passwordController),
              SizedBox(height: 14),
              CustomTextField('Confirm Password', "Please confirm password", controller: confirmPasswordController),
              SizedBox(height: 64),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String validatorText;
  final TextEditingController controller;

  const CustomTextField(this.labelText, this.validatorText, {Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
    );
  }
}
