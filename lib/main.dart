import 'package:flutter/material.dart';
import 'package:flutter_website/responsive/desktop_scafold.dart';
import 'package:flutter_website/responsive/mobile_scafold.dart';
import 'package:flutter_website/responsive/responsive_layout.dart';
import 'package:flutter_website/responsive/tablet_scafold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ResponsiveLayout(
          mobileScafold: MobileScafold(),
          tabletScafold: TabletScafold(),
          desktopScafold: DesktopScafold()),
    );
  }
}
