import 'package:atomic_design_sample/pages/atomic_design_sample_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atomic Design Sample',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const AtomicDesignSamplePage(),
    );
  }
}
