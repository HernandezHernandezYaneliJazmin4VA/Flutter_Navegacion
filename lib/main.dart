import 'package:flutter/material.dart';
import 'screens/secondary.dart';
import 'screens/primary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      debugShowCheckedModeBanner: false,
      //la pam6alla inicial
      initialRoute: "/primary",
      routes: {
        "/primary": (BuildContext context) => Primary(),
        "/secondary": (BuildContext context) => Secondary(),
      },
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.red,
          textTheme: TextTheme(
              bodyText2: TextStyle(
            color: Colors.pink,
            fontSize: 20,
          ))),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
