import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';


class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    required this.validator,
    this.maxLines ,
    this.onChanged,
     this.minLines
  });
  final int? maxLines;
  final String hintText;
  final int? minLines;
  final TextInputType textInputType;
final String? Function(String?)? validator;
  final void Function(String?)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.textInputType == TextInputType.visiblePassword;
  }

  @override
  Widget build(BuildContext context) {
    
    
    return TextFormField(
      obscureText: _isObscured,
      onChanged: widget.onChanged,
       cursorColor: AppColors.kColor7,
      maxLines: widget.maxLines ?? 1,
      minLines: widget.minLines ?? 1,
      keyboardType: widget.textInputType,
      textAlign: TextAlign.left,
      style: AppStyles.textStyle16,
      validator: widget.validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return 'Это поле обязательно';
              }
              return null;
            } ,
      decoration: InputDecoration(
        
        hintText: widget.hintText,
        hintStyle: AppStyles.textStyle16,
        filled: true,
        fillColor: AppColors.kColor5, // Make fillColor transparent
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        suffixIcon: _buildPrefixIcon(),
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
      ),
    );
  }

  Widget? _buildPrefixIcon() {
    if (widget.textInputType == TextInputType.emailAddress) {
      return const Icon(Icons.email_outlined, color: AppColors.kColor9);
    } else if (widget.textInputType == TextInputType.visiblePassword) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _isObscured = !_isObscured;
          });
        },
        child: Icon(
          _isObscured ? Icons.lock_outline : Icons.lock_open,
          color: AppColors.kColor9,
        ),
      );
    }
    return null;
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide:const BorderSide(color: AppColors.kColor7),
    );
  }


}
