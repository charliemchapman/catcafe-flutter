import 'package:flutter/material.dart';

import 'cat_model.dart';

class CatDetailsPage extends StatelessWidget {
  final CatModel cat;

  const CatDetailsPage({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(cat.name)),
        body: Center(
            child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                cat.urlAvatar,
              ),
            ),
            Text(
              cat.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              cat.breed,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Icon(
              cat.isAwake ? Icons.sunny : Icons.nightlight,
              color: cat.isAwake ? Colors.green : Colors.purple,
            ),
            Text(
              cat.isAwake ? "Awake" : "Sleeping",
              style:
                  TextStyle(color: cat.isAwake ? Colors.green : Colors.purple),
            )
          ],
        )),
      );
}
