import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberPicker extends StatelessWidget {
  const PhoneNumberPicker({super.key});

  @override
  Widget build(BuildContext context) {
    // String initialCountry = 'Russian Federation';
    PhoneNumber number = PhoneNumber(isoCode: 'RU');

    return InternationalPhoneNumberInput(
      textStyle: TextStyle(
        color: AppColors.kColor4,
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
      maxLength: 10,
      formatInput: false,
      cursorColor: const Color(0xffFEDF89),
      ignoreBlank: true,
      selectorTextStyle: TextStyle(
        fontSize: 24.sp,
        color: AppColors.kColor4,
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return ' добавьте номер телефона';
        }
        if (val.length < 9) {
          return 'Неправильный номер телефона';
        }
        return null;
      },
      onFieldSubmitted: (val) {
     //   prefs.setString(Prefs.userPhoneNumber, val);
      },
      inputDecoration: InputDecoration(
        border: InputBorder.none,
        hintText: '987 654 32 10',
        hintStyle: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      textAlign: TextAlign.start,
      initialValue: number,
      selectorConfig: const SelectorConfig(
        trailingSpace: false,
        useBottomSheetSafeArea: true,
        selectorType: PhoneInputSelectorType.DIALOG,
        showFlags: true,
        useEmoji: true,
      ),
      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
      },
    );
  }
}
