import 'package:flutter/material.dart';
import 'index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(67,144,87, 1.0)
        ),
        home: IndexPage(),
      ),
    );
  }
}