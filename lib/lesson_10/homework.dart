import 'dart:async';

void launchFns() async {
  print('------------------Tasks start-----------------------');

  await task1();
  await task2();
  await task3();
  await task4();
  await task5();
  await task6();
  await task7();
  await task8();
}

Future<String> fetchName() async {
  await Future<void>.delayed(Duration(milliseconds: 2000));

  return 'Denys';
}

Future<String> fetchAge() async {
  await Future<void>.delayed(Duration(milliseconds: 1500));

  return '25';
}

Future<void> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; --i) {
    await Future<void>.delayed(Duration(seconds: 1), () => print('$i...'));
  }

  await Future<void>.delayed(Duration(seconds: 1), () => print('Старт'));
}

String getAge(String age) {
  final modifiedResult = int.tryParse(age) ?? 0;
  final lastDigit = int.tryParse(age[age.length - 1]) ?? 0;

  final ageExpression = switch (modifiedResult) {
    final n when n == 1 => 'рік',
    final n when n > 1 && n < 5 => 'роки',
    final n when n > 4 && n < 21 => 'років',
    final n when n > 20 && lastDigit > 0 && lastDigit < 2 => 'рік',
    final n when n > 20 && lastDigit > 1 && lastDigit < 5 => 'роки',
    final n when n > 20 && lastDigit > 4 => 'років',

    _ => 'років',
  };

  return ageExpression;
}

List<int> generateList(int number) {
  return List.generate(number, (i) => i + 1);
}

Future<void> task1() async {
  final result = await fetchName();

  print('Мене звати $result');
  print('------------------Task 1 finished-----------------------');
}

Future<void> task2() async {
  final result = await fetchAge();
  final ageExpression = getAge(result);

  print('Мені $result $ageExpression');
  print('------------------Task 2 finished-----------------------');
}

Future<void> task3() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  final name = await fetchName();
  final age = await fetchAge();
  final ageExpression = getAge(age);

  stopwatch.stop();
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
  print('Мене звати $name. Мені $age $ageExpression');

  print('------------------Task 3 finished-----------------------');
}

Future<void> task4() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  final [name, age] = await Future.wait([fetchName(), fetchAge()]);

  final ageExpression = getAge(age);

  stopwatch.stop();
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
  print('Мене звати $name. Мені $age $ageExpression');

  print('------------------Task 4 finished-----------------------');
}

Future<void> task5() async {
  await delayedCountdown(3);

  print('------------------Task 5 finished-----------------------');
}

Future<void> task6() async {
  final list = generateList(5);
  final iterableStream = Stream.fromIterable(list);

  await for (final value in iterableStream) {
    print('await for: $value');
  }

  final stream2 = Stream.fromIterable(list);
  await stream2.listen((value) => print('listen: $value')).asFuture<void>();

  print('------------------Task 6 finished-----------------------');
}

Future<void> task7() async {
  final stream = Stream.periodic(Duration(seconds: 1), (i) => i + 1).take(10);

  await stream.listen((value) => print('$value...')).asFuture<void>();

  print('------------------Task 7 finished-----------------------');
}

Future<void> task8() async {
  final controller = StreamController<String>();

  controller.stream.listen(
    (value) => print('controller: $value'),
    onDone: () => print('Стрім завершено'),
  );

controller
    ..add('Hello')
    ..add('World')
    ..add('Dart');

  await controller.close();

  print('------------------Task 8 finished-----------------------');
}
