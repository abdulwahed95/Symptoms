import 'package:flutter/material.dart';
import 'package:symptoms_statistics/route_generator.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar", "AR"),
      theme: ThemeData(fontFamily: 'Nunito'),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
