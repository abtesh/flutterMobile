// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'login.dart';

void main() {}

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController FnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'ERP System FOR DOT-Ethiopia',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Welcome. Please Sign up",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: FnameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Full Name'),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "****",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              controller: phonenumbercontroller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'phone number'),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text("sign up"),
              onPressed: () {
                const Text("Signup Sucessful");
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(" Already Signed up? "),
              TextButton(
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    LoginPage();
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
