import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Second extends StatelessWidget {
  final HomeController ctrl = Get.find();

  Second({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("${ctrl.count}", key: const Key('counter'),),
        ));
  }
}
