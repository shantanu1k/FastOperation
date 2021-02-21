import 'package:flutter_test/flutter_test.dart';

import 'package:FastOperation/FastOperation.dart';

void main() {
  test('adds one to input values', () {
    final distanceTest = distance();
    expect(distanceTest.centToInch(231.323), 91.072096423);
    expect(distanceTest.inchTokilo(3435221.1), 85.8805275);
    expect(distanceTest.miliToInch(645.321), 25.4063523021);
  });
}
