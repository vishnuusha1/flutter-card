import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamiccard/card1.dart';
import 'package:dynamiccard/card_four.dart';
import 'package:dynamiccard/card_one.dart';
import 'package:dynamiccard/card_three.dart';
import 'package:dynamiccard/card_two.dart';
import 'package:dynamiccard/constrainedBox_parser.dart';
import 'package:dynamiccard/flexibleParser.dart';
import 'package:dynamiccard/instrict.dart';
import 'package:dynamiccard/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DynamicWidgetBuilder.addParser(ConstrainedBoxParser());
    DynamicWidgetBuilder.addParser(IntrinsicHeightParser());
    DynamicWidgetBuilder.addParser(flexibleParser());
    return MaterialApp(
      title: 'Dynamic Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Card1(),
    );
  }
}
