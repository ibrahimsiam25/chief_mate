import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routes/routes_import.dart';
import '../widgets/add_phone_number_view_app_bar.dart';
import '../widgets/restaurant_name_text_field.dart';
import '../widgets/restaurant_name_view_header.dart';
class WorkSpaceNameView extends StatefulWidget {
  const WorkSpaceNameView({super.key});
  static const String routeName = '/workSpaceNameView';

  @override
  State<WorkSpaceNameView> createState() => _WorkSpaceNameViewState();
}

class _WorkSpaceNameViewState extends State<WorkSpaceNameView> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  String _workSpaceName = '';

  void _onSaved(String? value) {
    if (value != null && value.isNotEmpty) {
      _workSpaceName = value;
    }
  }

  void _onSubmit() {
    if (_formState.currentState!.validate()) {
      _formState.currentState!.save();
      GoRouter.of(context).push(ChooseColorView.routeName, extra: _workSpaceName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formState,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAuthAppBar(),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: const RestaurantNameViewHeader(),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: RestaurantNameTextField(onSaved: _onSaved),
                ),
               const Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 40.w, right: 20.w, bottom: 20.h),
                  child: CustomButton(
                    onTap: _onSubmit,
                    buttonName: 'Продолжить',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
