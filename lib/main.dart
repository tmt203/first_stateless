import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Cars'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(children: const [
        CarWidget(
            make: "BMW",
            model: "M3",
            imageSrc:
                "https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467__340.jpg"),
        CarWidget(
            make: "BMW",
            model: "M3",
            imageSrc:
                "https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467__340.jpg"),
        CarWidget(
            make: "BMW",
            model: "M3",
            imageSrc:
                "https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467__340.jpg"),
      ]),
    );
  }
}

class CarWidget extends StatelessWidget {
  const CarWidget(
      {Key? key,
      required this.make,
      required this.model,
      required this.imageSrc})
      : super(key: key);
  final String make;
  final String model;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "$make $model",
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.network(
                  imageSrc,
                  width: 255,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
