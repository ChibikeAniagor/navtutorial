// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CallsScreenWidget extends StatefulWidget {
  const CallsScreenWidget({super.key});

  @override
  State<CallsScreenWidget> createState() => _CallsScreenWidgetState();
}

class _CallsScreenWidgetState extends State<CallsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Calls Screen')),
    );
  }
}
