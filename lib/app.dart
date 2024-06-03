import 'package:flutter/material.dart';
import 'package:wats_app/widgets/w_bottomNav.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WBottomNav(),
    );
  }
}
