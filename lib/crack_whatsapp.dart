// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CrackWhatsappWidget extends StatefulWidget {
  const CrackWhatsappWidget({super.key});

  @override
  State<CrackWhatsappWidget> createState() => _CrackWhatsappWidgetState();
}

class _CrackWhatsappWidgetState extends State<CrackWhatsappWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xff075e54),
        ),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            label: "Community",
            icon: Icon(Icons.groups),
          ),
          BottomNavigationBarItem(
            label: "Community",
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: "Community",
            icon: Icon(Icons.update),
          ),
          BottomNavigationBarItem(
            label: "Community",
            icon: Icon(Icons.call),
          )
        ]),
      ),
      body: Center(
        child: Text('Crack'),
      ),
    );
  }
}
