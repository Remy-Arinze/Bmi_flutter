import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(Bmi());

class Bmi extends StatelessWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Color(0xFF0a0e21),
          appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
    );
  }
}
