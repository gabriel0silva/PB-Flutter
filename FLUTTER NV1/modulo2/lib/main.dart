import 'package:flutter/material.dart';
import 'package:modulo2/one_page.dart';
import 'package:modulo2/two_page.dart';

main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const OnePage(),
        '/twoPage': (_) =>  TwoPage()
      },
    );
  }
}

