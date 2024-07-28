import 'package:flutter/material.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/widgets/app_drawer.dart';

class TabletScafold extends StatefulWidget {
  const TabletScafold({super.key});

  @override
  State<TabletScafold> createState() => _TabletScafoldState();
}

class _TabletScafoldState extends State<TabletScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      drawer: AppDrawer(),
      backgroundColor: bgColor,
    );
  }
}
