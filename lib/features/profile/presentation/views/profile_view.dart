import 'package:chief_mate/features/profile/presentation/views/widgets/custom_profile_view_avatar.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
static const routeName = '/profileView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileViewBody(),
    );
  }
}
