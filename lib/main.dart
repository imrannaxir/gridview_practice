import 'package:flutter/material.dart';

import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALHAMDULILLAH',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.black,
              secondary: Colors.black,
            ),
      ),
      home: const MyCard(title: 'GRIDVIEW'),
    );
  }
}
