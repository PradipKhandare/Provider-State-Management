

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/count_provider.dart';
import 'package:provider_state/provider/example_one_provider.dart';
import 'package:provider_state/screens/count_example.dart';
import 'package:provider_state/screens/example_one.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider(),),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider(),),
      ],
      child: MaterialApp(
        home: ExampleOne(),
      ),
    );
  }
}
