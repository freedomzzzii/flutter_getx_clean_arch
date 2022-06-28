import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:getx/src/modules/abc_module/abc_module.dart';
import 'package:getx/src/modules/abc_module/applications/controllers/counter/counter_controller.dart';
import 'package:getx/src/modules/abc_module/domains/entities/counter_increment_entity.dart';
import 'package:mockito/mockito.dart';

import '../../applications/controllers/counter/counter_controller_test.mocks.dart';

final MockCounterImplController mockCounterImplController =
    MockCounterImplController();
final MockCounterImplUseCase mockCounterImplUseCase = MockCounterImplUseCase();

class MockAppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CounterImplController>(mockCounterImplController);
  }
}

class MockCounterImplController extends CounterImplController with Mock {
  MockCounterImplController() : super(usecase: mockCounterImplUseCase);
}

void main() {
  final ABCModule abcModule = ABCModule();
  final MockAppBinding rootBinding = MockAppBinding();
  const CounterIncrementResponseEntity expectCounterIncrementResponseEntity =
  CounterIncrementResponseEntity(summary: 1);

  setUp(() {
    Get.testMode = true;
  });

  tearDown(() {
    Get.reset();
  });

  group('TaskCreateScreen Class', () {
    testWidgets('Should have mandatory menu', (WidgetTester tester) async {
      await tester.pumpWidget(GetMaterialApp(
        initialRoute: '/a',
        initialBinding: rootBinding,
        getPages: <GetPage>[
          ...abcModule.routeScreen,
        ],
      ));

      expect(find.byKey(const Key('counter')), findsOneWidget);
      expect(find.byKey(const Key('buttonIncrement')), findsOneWidget);
      expect(find.byKey(const Key('summary')), findsOneWidget);
    });

    testWidgets('Should navigate to BScreen',
        (WidgetTester tester) async {
      await tester.pumpWidget(GetMaterialApp(
        initialRoute: '/a',
        initialBinding: rootBinding,
        getPages: <GetPage>[
          ...abcModule.routeScreen,
        ],
      ));

      expect(find.text('counter: 0'), findsOneWidget);

      when(
        mockCounterImplUseCase.increment(
          requestIncrement: const CounterIncrementRequestEntity(
            summary: 0,
            numberOfIncrement: 1,
          ),
        ),
      ).thenReturn(expectCounterIncrementResponseEntity);

      await tester.tap(find.byKey(const Key('buttonIncrement')));

      await tester.pump();

      expect(find.text('counter: 1'), findsOneWidget);
    });

    testWidgets('Should increment counter - Success case',
            (WidgetTester tester) async {
          await tester.pumpWidget(GetMaterialApp(
            initialRoute: '/a',
            initialBinding: rootBinding,
            getPages: <GetPage>[
              ...abcModule.routeScreen,
            ],
          ));

          expect(find.byKey(const Key('navigateBScreen')), findsOneWidget);

          await tester.tap(find.byKey(const Key('navigateBScreen')));

          await tester.pumpAndSettle();

          expect(Get.currentRoute, '/b');
          expect(find.byKey(const Key('navigateBScreen')), findsNothing);
        });
  });
}
