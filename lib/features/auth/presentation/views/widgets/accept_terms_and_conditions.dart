import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcceptTermsAndConditions extends StatelessWidget {
  const AcceptTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Используя ChefMate вы соглашаетесь принять',
          textAlign: TextAlign.center,
          style: AppStyles.textStyle11.copyWith(
            color: Colors.grey.withOpacity(.55),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Условия Пользования ',
                textAlign: TextAlign.center, style: AppStyles.textStyle11),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                'и',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle11.copyWith(
                  color: Colors.grey.withOpacity(.55),
                ),
              ),
            ),
            Text(
              'Политику конфиденциальности',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle11,
            ),
          ],
        )
      ],
    );
  }
}
