import 'package:flutter_test/flutter_test.dart';
import 'package:getx/src/modules/app_module.dart';

void main() {
  final AppBinding expectAppBinding = AppBinding();
  group('AppBinding Class', () {
    test('Should have AppBinding Class', () {
      expect(AppBinding, AppBinding);
    });

    test('Should have method dependencies', () {
      expect(
            () async => expectAppBinding.dependencies(),
        isA<void>(),
      );
    });
  });
}
