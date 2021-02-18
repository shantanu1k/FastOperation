import 'package:flutter_test/flutter_test.dart';

import 'package:FastOperation/FastOperation.dart';

void main() {
  test('adds one to input values', () {
    final fastOp = FastOperation();
    expect(fastOp.sumNum([3,1.0,2.3,3,7.6,5,4,6]), 31.9);
    expect(fastOp.multiplyNum(3,2.1), 6.300000000000001);
    expect(fastOp.divideNum(6.3,9), 0.7);
  });
}
