import 'package:app_flutter_counter/src/pages/counter_page.dart';
//import 'package:app_flutter_counter/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: CounterPage(),
      )
    );
  }
}