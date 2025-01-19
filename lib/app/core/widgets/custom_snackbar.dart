import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackBar {
  //SNACKBAR TOAST Success
  static showCustomToastSuccess({
    String? title,
    required String message,
    Color? color,
    bool? isDismissible,
    Duration? duration,
    SnackPosition? position,
  }) {
    Get.closeAllSnackbars();
    Get.rawSnackbar(
        snackPosition: position ?? SnackPosition.BOTTOM,
        title: title,
        duration: duration ?? const Duration(seconds: 2),
        snackStyle: SnackStyle.GROUNDED,
        backgroundColor: color ?? Colors.green,
        onTap: (snack) {
          Get.closeAllSnackbars();
        },
        //overlayBlur: 0.8,
        message: message,
        isDismissible: isDismissible ?? true);
  }

  //SNACKBAR TOAST ERROR
  static showCustomToastError({
    String? title,
    String? message,
    bool? isDismissible,
    Color? color,
    Duration? duration,
    SnackPosition? position,
  }) {
    Get.closeAllSnackbars();
    Get.rawSnackbar(
        snackPosition: position ?? SnackPosition.BOTTOM,
        duration: duration ?? const Duration(milliseconds: 1500),
        snackStyle: SnackStyle.FLOATING,
        backgroundColor: color ?? const Color.fromARGB(242, 225, 31, 18),
        onTap: (snack) {
          Get.closeAllSnackbars();
        },
        message: message ?? "masih dalam pengembangan",
        isDismissible: isDismissible ?? true);
  }

  static void showMaterialSnackbar({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
  }) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      duration: duration,
      backgroundColor: backgroundColor,
      action: action,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
