import 'package:flutter/material.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/widgets/app_drawer.dart';

class MobileScafold extends StatefulWidget {
  const MobileScafold({super.key});

  @override
  State<MobileScafold> createState() => _MobileScafoldState();
}

class _MobileScafoldState extends State<MobileScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppbar, drawer: AppDrawer(), backgroundColor: bgColor);
  }
}
