import 'package:flutter_test/flutter_test.dart';
import 'package:fast_operation/fast_operation.dart';
void main() {
  test('tests for different properties', () {
    final distanceTest = distance();
    final weightTest = weight();
    final temperatureTest = temperature();
    final baseConverterTest = base_converter();
    final angleTest = angle();
    expect(distanceTest.convert(value: 231,from: DISTANCE.centimeter,to: DISTANCE.inch), 90.9447);
    expect(distanceTest.convert(value: 3435221.1,from: DISTANCE.feet,to: DISTANCE.kilometer), 1047.05539128);
    expect(distanceTest.convert(value: 645.321,from: DISTANCE.meter, to: DISTANCE.miles), 0.40100246940000006);
    expect(weightTest.convert(from: WEIGHT.ounces,to: WEIGHT.grams,value: 98),2778.25296);
    expect(weightTest.convert(from: WEIGHT.kilograms,to: WEIGHT.pounds,value: 321.754),709.3462687420001);
    expect(weightTest.convert(from: WEIGHT.tonnes, to: WEIGHT.kilograms,value: 74.21),74210);
    expect(temperatureTest.convert(from: TEMPERATURE.fahrenheit,to: TEMPERATURE.kelvin,value: 182.2),356.59444444444443);
    expect(temperatureTest.convert(from: TEMPERATURE.celsius,to: TEMPERATURE.fahrenheit,value: 39.32),102.776);
    expect(temperatureTest.convert(from: TEMPERATURE.kelvin,to: TEMPERATURE.fahrenheit,value: 620.61),657.4280000000001);
    expect(baseConverterTest.decimalToHex(381),"17D");
    expect(baseConverterTest.decimalToBinary(612),"1001100100");
    expect(baseConverterTest.hexToDecimal("EA14"),59924);
    expect(angleTest.convert(value: 2.132,from: ANGLE.radians,to: ANGLE.degrees),122.15464560000001);
    expect(angleTest.convert(value: 12.4442,from: ANGLE.gradians,to: ANGLE.radians),0.1954734936);
    expect(angleTest.convert(value: 180,from: ANGLE.degrees,to: ANGLE.radians),3.14154);
  });
}
