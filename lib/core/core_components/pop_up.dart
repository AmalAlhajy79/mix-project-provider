import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showLoader()=> showDialog(
context: Get.context!,
builder: (_) => WillPopScope(
onWillPop: () async => false,
child: const Center(
child: CircularProgressIndicator(),
)));

void showSnackBar(String label)=>ScaffoldMessenger.of(Get.context!)
    .showSnackBar(SnackBar(content: Text(label)));