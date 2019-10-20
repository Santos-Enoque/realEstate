import 'package:flutter/material.dart';
import 'package:real_state/providers/property.dart';
import 'package:real_state/providers/rooms.dart';
import 'package:real_state/screens/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
  ChangeNotifierProvider.value(value: PropertyProvider()),
  ChangeNotifierProvider.value(value: RoomsProvider()),
], child: MyApp(),));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real State',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage()
    );
  }
}
