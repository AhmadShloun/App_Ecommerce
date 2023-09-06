import 'package:flutter/material.dart';

keyboardType({required String type}) {
  if (type == 'text') {
    return TextInputType.text;
  }
  if (type == 'email') {
    return TextInputType.emailAddress;
  }
  if (type == 'number') {
    return  TextInputType.number;
  }
}
