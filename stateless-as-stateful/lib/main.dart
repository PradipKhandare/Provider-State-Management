


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateless_as_stateful/screens/value_notify_litsener.dart';

void main(){
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: NotifyListener(),
   );
  }
}
