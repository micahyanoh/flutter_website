import 'package:flutter/material.dart';
import 'package:flutter_website/utils/constants.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: contColor, borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
