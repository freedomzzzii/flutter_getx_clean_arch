import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:getx/src/modules/abc_module/abc_module.dart';
import 'package:getx/src/modules/abc_module/presentations/screens/a_screen.dart';
import 'package:getx/src/modules/abc_module/presentations/screens/b_screen.dart';

void main() {
  final ABCModule expectABCModule = ABCModule();
  final List<GetPage> expectRouteScreen = <GetPage>[
    GetPage(
      name: '/a',
      page: () => AScreen(),
    ),
    GetPage(
      name: '/b',
      page: () => BScreen(),
    ),
  ];

  group('ABCModule Class', () {
    test('Should have ABCModule Class', () {
      expect(ABCModule, ABCModule);
    });

    test('Should have mandatory properties', () {
      expect(expectABCModule.routeScreen, isA<List<GetPage>>());
      expect(expectABCModule.routeScreen.length, 2);
      for (int i = 0; i < expectABCModule.routeScreen.length; i++) {
        expect(expectABCModule.routeScreen[i].name, expectRouteScreen[i].name);
        expect(expectABCModule.routeScreen[i].page.runtimeType, expectRouteScreen[i].page.runtimeType);
        expect(expectABCModule.routeScreen[i].binding, expectRouteScreen[i].binding);
      }
    });
  });
}
