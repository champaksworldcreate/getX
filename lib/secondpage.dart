// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'controller.dart';
//
// class SecondPage extends StatelessWidget {
//   final HelloController helloController = Get.put(HelloController());
//
//    SecondPage({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Obx(() {
//           return Text(
//             helloController.message.value,
//             style: TextStyle(fontSize: 24),
//           );
//         }),
//       ),
//     );
//   }
// }
