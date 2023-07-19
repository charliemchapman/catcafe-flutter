import 'package:cat_cafe/not_implemented_page.dart';
import 'package:cat_cafe/settings_page.dart';
import 'package:flutter/material.dart';

import 'cat_details_page.dart';
import 'cat_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Cat Cafe'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CatModel> cats = CatModel.allCats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
                title: const Text("Settings"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                }),
            ListTile(
                title: const Text("Account"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NotImplementedPage()));
                }),
            ListTile(
                title: const Text("Cat Files"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NotImplementedPage()));
                }),
            ListTile(
                title: const Text("Cat Files"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NotImplementedPage()));
                }),
            ListTile(
                title: const Text("Upgrade"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NotImplementedPage()));
                }),
          ],
        )),
        body: ListView.builder(
            itemCount: cats.length,
            itemBuilder: (context, index) {
              final cat = cats[index];

              return Card(
                child: ListTile(
                  title: Text(cat.name),
                  subtitle: Text(cat.breed),
                  trailing: const Icon(Icons.arrow_forward),
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(
                      cat.urlAvatar,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CatDetailsPage(cat: cat)));
                  },
                ),
              );
            }));
  }
}
