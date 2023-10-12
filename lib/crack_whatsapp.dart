// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:navtutorial/calls_screen.dart';
import 'package:navtutorial/chat_screen.dart';
import 'package:navtutorial/community_screen.dart';
import 'package:navtutorial/updates_screen.dart';

class CrackWhatsappWidget extends StatefulWidget {
  const CrackWhatsappWidget({super.key});

  @override
  State<CrackWhatsappWidget> createState() => _CrackWhatsappWidgetState();
}

class _CrackWhatsappWidgetState extends State<CrackWhatsappWidget> {
  List<Widget> pages = [
    CommunityScreenWidget(),
    ChatScreenWidget(),
    UpdatesScreenWidget(),
    CallsScreenWidget()
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xff075e54),
        ),
        child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              print(value);
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: "Community",
                icon: Icon(Icons.groups),
              ),
              BottomNavigationBarItem(
                label: "Chats",
                icon: Icon(Icons.chat),
              ),
              BottomNavigationBarItem(
                label: "Updates",
                icon: Icon(Icons.update),
              ),
              BottomNavigationBarItem(
                label: "Calls",
                icon: Icon(Icons.call),
              )
            ]),
      ),
      body: pages[index],
    );
  }
}
