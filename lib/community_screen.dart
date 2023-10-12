// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CommunityScreenWidget extends StatefulWidget {
  const CommunityScreenWidget({super.key});

  @override
  State<CommunityScreenWidget> createState() => _CommunityScreenWidgetState();
}

class _CommunityScreenWidgetState extends State<CommunityScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Community Screen')),
    );
  }
}
