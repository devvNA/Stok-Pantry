import 'package:flutter/material.dart';
import 'package:stock_pantry/app/core/theme/app_color.dart';

class LoadingImageWidget extends StatelessWidget {
  const LoadingImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 25,
      height: 25,
      child: CircularProgressIndicator(
        color: AppColors.orange,
      ),
    );
  }
}
