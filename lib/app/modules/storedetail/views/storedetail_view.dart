import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/storedetail_controller.dart';

class StoredetailView extends GetView<StoredetailController> {
  const StoredetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StoredetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StoredetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
