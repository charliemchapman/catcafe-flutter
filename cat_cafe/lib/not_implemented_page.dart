import 'package:flutter/material.dart';

class NotImplementedPage extends StatelessWidget {
  const NotImplementedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Not Implemented")),
        body: const Center(
            child: Column(
          children: [Text("Page not implemented!")],
        )),
      );
}
