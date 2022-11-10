import 'package:flutter/material.dart';
import 'package:pt_rapp_area/page/area_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PT RAPP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AreaPage.routeName,
      routes: {
        AreaPage.routeName: (context) => const AreaPage(),
      },
    );
  }
}
