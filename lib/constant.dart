// Strings
import 'package:flutter/material.dart';

const baseURL = "http://172.17.224.1:8000/api";
const loginURL = baseURL + '/login';
const registerURL = baseURL + '/register';
const logoutURL = baseURL + '/logout';
const userURL = baseURL + '/user';
const postURL = baseURL + '/posts';
const commentsURL = baseURL + '/comments';

// Errors
const serverError = 'Server Error';
const unauthorized = 'Unauthorized';
const somethingWentWrong = 'Something went wrong, try again !';

// Input decoration

InputDecoration kInputDecration(String label) {
  return InputDecoration(
      labelText: label,
      contentPadding: EdgeInsets.all(10),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black)));
}

// button

TextButton kTextButton(String label, Function onPressed()) {
  return TextButton(
    child: Text(
      label,
      style: TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        padding: MaterialStateProperty.resolveWith(
            (states) => EdgeInsets.symmetric(vertical: 10))),
    onPressed: () => onPressed(),
  );
}

// loginRegisterHint

Row kLoginRegisterHint() {
  return Row(
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
  );
}
