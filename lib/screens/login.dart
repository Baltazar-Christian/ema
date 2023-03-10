// import 'dart:html';

import 'package:ema/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  // get val => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Form(
          key: formkey,
          child: ListView(
            padding: EdgeInsets.all(32),
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: txtEmail,
                validator: (val) =>
                    val!.isEmpty ? 'Invalid email Address' : null,
                decoration: kInputDecration('Email'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: txtPassword,
                  obscureText: true,
                  validator: (val) =>
                      val!.isEmpty ? 'Required at least 6 chars' : null,
                  decoration: kInputDecration('Password')),
              SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => Colors.blue),
                    padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.symmetric(vertical: 10))),
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account '),
                  GestureDetector(
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {},
                  )
                ],
              )
            ],
          )),
    );
  }
}
