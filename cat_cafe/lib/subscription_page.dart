import 'package:flutter/material.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Subscription")),
        body: const Center(
            child: Column(
          children: [Text("Subscription settings!")],
        )),
      );
}
