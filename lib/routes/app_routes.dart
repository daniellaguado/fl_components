import 'package:flutter/material.dart';
import 'package:fl_components/models/menu_options.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    //     route: 'listview2',
    //     name: 'ListView 2',
    //     screen: const ListView2Screen(),
    //     icon: Icons.list),
    //
    MenuOptions(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.sd_card_alert_outlined),
    //
    MenuOptions(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.calendar_view_day),

    MenuOptions(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervisor_account),

    MenuOptions(
        route: 'animated',
        name: 'Animated',
        screen: const AnimatedScreen(),
        icon: Icons.slow_motion_video_outlined),

    MenuOptions(
      route: 'input',
      name: 'Inputs y Forms',
      screen: const InputScreen(),
      icon: Icons.input,
    ),
    MenuOptions(
        route: 'slider ',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.slideshow),
    MenuOptions(
        route: 'listviewbuilder ',
        name: 'Listview Builder & Pull to refresh',
        screen: const ListviewBuilderScreen(),
        icon: Icons.build_circle_sharp),

    //
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    appRoutes.addAll(
        {'listview2': (BuildContext context) => const ListView2Screen()});

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }
}
