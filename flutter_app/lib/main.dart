import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/blogs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  ThemeData defaultTheme({required ThemeMode withMode}) {
    ThemeData light = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.white,
      colorScheme: const ColorScheme.light(
        surface: Colors.white,
        onSurface: Colors.black,
        primary: Colors.black,
        onPrimary: Colors.white,
        secondary: Color(0xFF444444),
        onSecondary: Color(0xFFDDDDDD),
        tertiary: Color.fromARGB(255, 194, 130, 26),
        onTertiary: Color(0xFF111111),
      ),
    );

    ThemeData dark = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      canvasColor: Colors.black,
      colorScheme: const ColorScheme.dark(
        surface: Colors.black,
        onSurface: Colors.white,
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: Color(0xFFBBBBBB),
        onSecondary: Color(0xFFDDDDDD),
        tertiary: Color.fromARGB(255, 26, 177, 194),
        onTertiary: Color(0xFFEEEEEE),
      ),
    );

    return withMode == ThemeMode.light ? light : dark;
  }

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: defaultTheme(withMode: ThemeMode.dark),
      home: const BlogsPage(title: 'Flutter Demo Home Page'),
    );
  }
}
