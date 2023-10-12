// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:navtutorial/calls_screen.dart';
import 'package:navtutorial/chat_screen.dart';
import 'package:navtutorial/community_screen.dart';
import 'package:navtutorial/crack_whatsapp.dart';
import 'package:navtutorial/updates_screen.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CrackWhatsappWidget()));
                  },
                  child: Icon(Icons.whatshot)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
          title: Text("WhatsApp"),
          backgroundColor: Color(0xff075e54),
          centerTitle: false,
          bottom: TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              indicatorWeight: 4,
              indicatorColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                  text: "Chats",
                  icon: Icon(Icons.chat),
                ),
                Tab(
                  text: "Updates",
                  icon: Icon(Icons.update),
                ),
                Tab(
                  text: "Calls",
                  icon: Icon(Icons.call),
                )
              ]),
        ),
        body: TabBarView(children: [
          CommunityScreenWidget(),
          ChatScreenWidget(),
          UpdatesScreenWidget(),
          CallsScreenWidget()
        ]),
      ),
    );
  }
}
