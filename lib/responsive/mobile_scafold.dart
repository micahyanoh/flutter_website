import 'package:flutter/material.dart';
import 'package:flutter_website/utils/constants.dart';

class MobileScafold extends StatefulWidget {
  const MobileScafold({super.key});

  @override
  State<MobileScafold> createState() => _MobileScafoldState();
}

class _MobileScafoldState extends State<MobileScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: appbarColor,
        ),
        drawer: Drawer(
          backgroundColor: appdrawerColor,
          child: Column(
            children: [DrawerHeader(child: Icon(Icons.favorite))],
          ),
        ),
        backgroundColor: bgColor);
  }
}
