# fast_operation

A dart package for conversion of various units:

- base
- angle
- distance
- temperature
- weight


## Install

Add this to your pubspec.yaml file:

```yaml
dependencies:
  fast_operation: #latest version
```

## Usage

```
import 'package:fast_operation/fast_operation.dart';
void main(){
  var miles = 3.12;
  var meter = distance().convert(value: miles, from: DISTANCE.miles, to: DISTANCE.meter);
  print(meter);   //5021.15328
}
```
Each property has its own class name and a ```convert``` function:
- distance - distance()
- weight - weight()
- and so on

While using ```from``` and ```to```, just type ```PROPERTY``` in caps and use ```.``` to access its units.

E.g.

```
  var meter = distance().convert(value: miles, from: DISTANCE.miles, to: DISTANCE.meter);
```

Here, only exception is for 'base'.
To change base between Decimal, Binary, Octal, Hexadecimal:

```
  var decimal = 123;
  var binary = base_converter().decimalToBinary(decimal);
```
