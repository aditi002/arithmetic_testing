import 'package:flutter_arithmetic_classwork/feature/auth/data/model/arithmetic.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Arithmetic test 1', () {
    test('add two numbers', () {
      final arithmetic = Arithmetic();
      int expectedValue = 6;
      arithmetic.first = 2;
      arithmetic.second = 4;
      int actualValue = arithmetic.add();

      expect(actualValue, expectedValue);
    });
    test('subtract two numbers', () {
      final arithmetic = Arithmetic();
      int expectedValue = 12;
      arithmetic.first = 14;
      arithmetic.second = 2;
      int actualValue = arithmetic.sub();

      expect(actualValue, expectedValue);
    });
  });
  group('Arithmetic test 2', () {
    test('multipy two numbers', () {
      final arithmetic = Arithmetic();
      int expectedValue = 6;
      arithmetic.first = 2;
      arithmetic.second = 3;
      int actualValue = arithmetic.mul();

      expect(actualValue, expectedValue);
    });
    test('divide two numbers', () {
      final arithmetic = Arithmetic();
      int expectedValue = 2;
      arithmetic.first = 4;
      arithmetic.second = 2;
      int actualValue = arithmetic.div();

      expect(actualValue, expectedValue);
    });
  });
}
