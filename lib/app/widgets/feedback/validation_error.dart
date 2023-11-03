import 'package:flutter/material.dart';

import '../../core/util/color_manager.dart';

class ValidationError extends StatelessWidget {
  final List<String>? messages;

  const ValidationError({
    Key? key,
    this.messages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var message in messages ?? [])
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 12, 0),
                    child: Icon(
                      Icons.warning_rounded,
                      color: ColorManager.DANGER,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      message,
                      softWrap: true,
                      style: const TextStyle(
                        color: ColorManager.DANGER,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
