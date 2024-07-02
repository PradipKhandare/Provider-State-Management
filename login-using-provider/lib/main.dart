import 'package:flutter/material.dart';
import 'package:login_with_provider/providers/auth_provider.dart';
import 'package:login_with_provider/providers/theme_changer_provider.dart';
import 'package:login_with_provider/screens/login_screen.dart';
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
          ChangeNotifierProvider(
            create: (_) => AuthProvider(),
          ),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            title: 'Provider Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              primaryColor: Colors.purple,
              iconTheme: const IconThemeData(
                color: Colors.red,
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              iconTheme: const IconThemeData(
                color: Colors.blue,
              ),
            ),
            home: const LoginScreen(),
          );
        }));
  }
}
