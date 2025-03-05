import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/profile/presentation/views/widgets/custom_profile_avatar.dart';
import 'package:chief_mate/features/profile/presentation/views/widgets/custom_profile_item.dart';
import 'package:chief_mate/features/profile/presentation/views/widgets/custom_profile_item2.dart';
import 'package:chief_mate/features/profile/presentation/views/widgets/profile_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileViewAppBar(),
              SizedBox(height: 40.h),
              const CustomProfileViewAvatar(),
              SizedBox(height: 20.h),
              Text(
                "******",
             //   prefs.getString(Prefs.userName) ?? '',
                style: AppStyles.textStyle24,
              ),
              SizedBox(height: 40.h),
              CustomProfileItem(
                title: 'Имя и фамилия',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomProfileItem2(
                title: 'Телефон',
                subTitle: '+7 '
              /*  ${prefs.getString(Prefs.userPhoneNumber)}*/
               
                ,
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomProfileItem2(
                title: 'Подписка',
                subTitle: 'Стандартный план',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomProfileItem(
                title: 'Уведомления',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomProfileItem(
                title: 'Сообщить об ошибке',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomProfileItem(
                title: 'Политика конфиденциальности',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomProfileItem(
                title: 'Условия использования',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              CustomProfileItem(
                title: 'Удалить аккаунт',
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Выйти из приложения',
                    style: AppStyles.textStyle16.copyWith(
                      color: AppColors.kColor9,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
