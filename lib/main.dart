import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double pw = Get.size.width;
  double ph = Get.size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thame and Size'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: ph * (0.5),
              width: pw * (0.8),
              color: Colors.purple,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            );
          },
          child: Icon(Icons.refresh_rounded)),
    );
  }
}
