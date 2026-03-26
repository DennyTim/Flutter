import 'dart:math';

String launchFns() {
  task1();

  return '------------------Task 1 finished-----------------------';
}

void task1() {
  final numbers = List.generate(100, (index) => Random().nextInt(101));

  print(numbers);

  print('65-й елемент: ${numbers[64]}');

  numbers.insert(50, 1000000000);

  print('50-й елемент: ${numbers[50]}');

  print('Removed element 24 ${numbers.remove(24)}');
  print('Removed element 45 ${numbers.remove(45)}');
  print('Removed element 66 ${numbers.remove(66)}');
  print('Removed element 88 ${numbers.remove(88)}');

  var sum = 0;

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }

  print('Розрахунок суми всіх елементів, що діляться на 3 без залишку: $sum');

  final temp = <int>[];

  for (final element in numbers) {
    if (element % 2 == 0) {
      temp.add(element);
    }
  }

  print('Елементи, що діляться на 2 без залишку: $temp');
  print('Довжина списку temp: ${temp.length}');
}
