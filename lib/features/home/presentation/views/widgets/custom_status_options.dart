import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_status_options_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/routes_import.dart';

class CustomStatusOptions extends StatelessWidget {
  const CustomStatusOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 12,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(InWorkStatusView.routeName);
            },
            child: const CustomStatusOptionsItem(
              optionName: 'В работе',
              optionNum: '6',
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Expanded(
          flex: 12,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(CompletedStatusView.routeName);
            },
            child: const CustomStatusOptionsItem(
              optionName: 'Выполнено',
              optionNum: '3',
            ),
          ),
        ),
      ],
    );
  }
}
