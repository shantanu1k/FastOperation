import 'package:flutter_test/flutter_test.dart';

import 'package:FastOperation/FastOperation.dart';

void main() {
  test('adds one to input values', () {
    final distanceTest = distance();
    expect(distanceTest.convert(231,from: DISTANCE.centimeter,to: DISTANCE.inch), 90.9447);
    expect(distanceTest.convert(3435221.1,from: DISTANCE.feets,to: DISTANCE.kilometer), 1047.05539128);
    expect(distanceTest.convert(645.321,from: DISTANCE.meter, to: DISTANCE.miles), 25.4063523021);
  });
}
