import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Settings")),
        body: const Center(
            child: Column(
          children: [Text("These are settings!")],
        )),
      );
}
