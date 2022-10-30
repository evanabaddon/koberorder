import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/startup_controller.dart';

class StartupView extends GetView<StartupController> {
  const StartupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartupView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StartupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
