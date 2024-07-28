import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/widgets/app_drawer.dart';

class DesktopScafold extends StatefulWidget {
  const DesktopScafold({super.key});

  @override
  State<DesktopScafold> createState() => _DesktopScafoldState();
}

class _DesktopScafoldState extends State<DesktopScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Row(
          children: [AppDrawer()],
        ));
  }
}
