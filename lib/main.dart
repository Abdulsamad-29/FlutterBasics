import 'package:flutter/material.dart';
import 'package:fluttercourse/widgets/alert.dart';
import 'package:fluttercourse/widgets/animated_text.dart';
import 'package:fluttercourse/widgets/bottomsheet.dart';
import 'package:fluttercourse/widgets/image.dart';
import 'package:fluttercourse/widgets/button.dart';
import 'package:fluttercourse/widgets/container_sized.dart';
import 'package:fluttercourse/widgets/dismissible.dart';
import 'package:fluttercourse/widgets/drawer.dart';
import 'package:fluttercourse/widgets/list_grid.dart';
import 'package:fluttercourse/widgets/rowscols.dart';
import 'package:fluttercourse/widgets/snackbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
      ),
      home: AnimatedTextWidget(),
    );
  }
}