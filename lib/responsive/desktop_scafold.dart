import 'package:flutter/material.dart';

import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/widgets/app_drawer.dart';
import 'package:flutter_website/widgets/my_box.dart';
import 'package:flutter_website/widgets/my_tile.dart';

class DesktopScafold extends StatefulWidget {
  const DesktopScafold({super.key});

  @override
  State<DesktopScafold> createState() => _DesktopScafoldState();
}

class _DesktopScafoldState extends State<DesktopScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppbar,
        backgroundColor: bgColor,
        body: Row(
          children: [
            const AppDrawer(),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    // four top boxes
                    AspectRatio(
                      aspectRatio: 4,
                      child: SizedBox(
                        width: double.infinity,
                        child: GridView.builder(
                            itemCount: 4,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return const MyBox();
                            }),
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return const MyTile();
                            }))
                  ],
                )),
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)))))
          ],
        ));
  }
}
