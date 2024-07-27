import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:get/get.dart';

class CounterController extends GetxController {
  var lastoperation = ''.obs;
  var count = 0.obs;

  void increment() {
    lastoperation.value = "Increment" ;
    // count++;
  }

  void decrement() {
    lastoperation.value = "Decrement" ;
    // count--;
  }
}
