// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UpdatesScreenWidget extends StatefulWidget {
  const UpdatesScreenWidget({super.key});

  @override
  State<UpdatesScreenWidget> createState() => _UpdatesScreenWidgetState();
}

class _UpdatesScreenWidgetState extends State<UpdatesScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Updates Screen')),
    );
  }
}
