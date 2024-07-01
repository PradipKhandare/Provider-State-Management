import 'package:dark_light_theme/providers/theme_changer_provider.dart';
import 'package:dark_light_theme/screens/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeChangerProvider(),
        ),
      ],
      child: Builder(builder: (BuildContext context){
        final themeChanger = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          title: 'Provider Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
            primaryColor: Colors.purple,
            iconTheme: IconThemeData(
              color: Colors.red,
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          ),
          home: const DarkTheme(),
        );
      })
    );
  }
}
