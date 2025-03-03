import 'package:chief_mate/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../constants/styles.dart';
import '../networking/api_error_model.dart';

void showErrorDialog(BuildContext context, ApiErrorModel apiErrorModel) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        apiErrorModel.getAllMessages(),
        style: AppStyles.textStyle16,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Понял!',
            style: AppStyles.textStyle16,
          ),
        ),
      ],
    ),
  );
}
