import 'package:flutter/material.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/widgets/app_drawer.dart';
import 'package:flutter_website/widgets/my_box.dart';
import 'package:flutter_website/widgets/my_tile.dart';

class MobileScafold extends StatefulWidget {
  const MobileScafold({super.key});

  @override
  State<MobileScafold> createState() => _MobileScafoldState();
}

class _MobileScafoldState extends State<MobileScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppbar,
        drawer: const AppDrawer(),
        backgroundColor: bgColor,
        body: Column(
          children: [
            // four top boxes
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
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
        ));
  }
}
