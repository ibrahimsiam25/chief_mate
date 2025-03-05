import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/home/presentation/views/home_view.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_bottom_nav_bar_selected_icon.dart';
import 'package:chief_mate/features/ingredients/presentation/views/ingredients_view.dart';
import 'package:chief_mate/features/recipes/presemtation/views/resicpe_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:svg_flutter/svg.dart';

class BottomNavBarController extends StatefulWidget {
  const BottomNavBarController({super.key});
static const String routeName = '/bottom-nav-bar';
  @override
  State<BottomNavBarController> createState() => _BottomNavBarControllerState();
}

class _BottomNavBarControllerState extends State<BottomNavBarController> {
  late PersistentTabController _controller;
  int selectedIndex = 0;
  int? extra;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    extra = GoRouterState.of(context).extra as int?;

    if (extra != null) {
      _controller = PersistentTabController(initialIndex: extra!);
      selectedIndex = extra!;
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  List<Widget> buildScreens() {
    return [
      const HomeView(),
      const IngredientsView(),
      const ResicpeView(),
      const Center(child: Text('Page 4')),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: selectedIndex == 0
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppIcons.home))
            : SvgPicture.asset(AppIcons.home),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 1
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppIcons.box))
            : SvgPicture.asset(AppIcons.box),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 2
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppIcons.book))
            : SvgPicture.asset(AppIcons.book),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 3
            ? CustomBottomNavBarSelectedIcon(
                child: SvgPicture.asset(AppIcons.fire))
            : SvgPicture.asset(AppIcons.fire),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      stateManagement: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff282828),
      navBarHeight: 66.h,
      confineToSafeArea: false,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      navBarStyle: NavBarStyle.simple,
      context,
      controller: _controller,
      screens: buildScreens(),
      items: navBarsItems(),
      onItemSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
