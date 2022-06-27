import 'package:get/get.dart';

import '../app_module.dart';
import 'presentations/screens/b_screen.dart';
import 'presentations/screens/a_screen.dart';

class ABCModule implements Module {
  @override
  List<GetPage> routeScreen = <GetPage>[
    GetPage(
      name: '/a',
      page: () => AScreen(),
    ),
    GetPage(
      name: '/b',
      page: () => BScreen(),
    ),
  ];
}
