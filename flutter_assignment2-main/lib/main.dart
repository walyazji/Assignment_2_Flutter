import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return DrawerBilderPortrait(context);
          } else {
            return DrawerBilderLandscape(context);
          }
        },
      ),
    );
  }

  Widget DrawerBilderPortrait(context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("SECOND ASSIGNMENT"),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text("FIRST Element"),
              ),
              ListTile(
                title: Text("SECOND Element"),
              ),
              ListTile(
                title: Text("THIRD Element"),
              ),
              ListTile(
                title: Text("FORTH Element"),
              ),
              ListTile(
                title: Text("FIFTHE Element"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget DrawerBilderLandscape(context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("SECOND ASSIGNMENT"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text("FIRST Element"),
              ),
              ListTile(
                title: Text("SECOND Element"),
              ),
              ListTile(
                title: Text("THIRD Element"),
              ),
              ListTile(
                title: Text("FORTH Element"),
              ),
              ListTile(
                title: Text("FIFTHE Element"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
