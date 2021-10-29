import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetParent());
}

class WidgetParent extends StatelessWidget {
  const WidgetParent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElasticDrawer(
        mainColor: Colors.white,
        drawerColor: Colors.black,
        mainChild: Column(
          children: const [
            Expanded(
              child: Image(
                image: AssetImage('assets/red_img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        drawerChild: Column(
          children: const [
            Expanded(
              child: Image(
                image: AssetImage('assets/purple_img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
