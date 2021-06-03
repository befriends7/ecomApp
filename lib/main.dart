import 'package:ecom/flashPage.dart';
import 'package:ecom/setUpLocator.dart';
import 'package:flutter/material.dart';

void main()
{
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return flashPage();
  }
}
