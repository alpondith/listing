import 'package:flutter/material.dart';

class ErrorFeedback extends StatelessWidget {
  final String? message;
  final VoidCallback? onRetry;

  const ErrorFeedback({
    Key? key,
    this.message = '',
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error : $message'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Reload'),
          ),
        ],
      ),
    );
  }
}
