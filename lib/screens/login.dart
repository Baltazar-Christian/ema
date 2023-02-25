import 'dart:html';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Form(
          child: ListView(
        padding: EdgeInsets.all(32),
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: txtEmail,
            decoration: InputDecoration(
                labelText: 'Email',
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          )
        ],
      )),
    );
  }
}
