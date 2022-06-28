import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/Controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: Text(Get.arguments)),
          TextButton(
            onPressed: () {
              controller.increment();
            },
            child: Obx(() => Text(controller.increment_value.string)),
          )
        ],
      ),
    );
  }
}
