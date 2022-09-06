import 'package:flutter/material.dart';
import 'app/Pages/Welcome/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'welcome',
    routes: {'welcome': (context) => MyWelcome()},
  ));
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
  );
}
