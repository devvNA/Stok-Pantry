import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegisterPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
