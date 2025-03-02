import 'package:first_app/body_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BodyContainer(
        colors: [Colors.pink, Colors.teal],
      ),
    ),
  );
}
