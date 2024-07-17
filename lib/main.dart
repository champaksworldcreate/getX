// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/secondpage.dart';

import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hello World App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'GetX Exmple',
            ),
            Obx(() => Text('${controller.count.value}',
                style: Theme.of(context).textTheme.headlineMedium)),
            Obx(() => Text('${controller.count.value}',
                style: Theme.of(context).textTheme.headlineMedium)),
            ElevatedButton(
              onPressed: controller.increment,
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: controller.decrement,
              child: Text('Decreement'),
            ),
          ],
        ),
      ),
    );
  }
}
