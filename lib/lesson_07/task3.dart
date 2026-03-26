import 'package:mocky/mocky.dart';

String launchFns() {
  task3();

  return '------------------Task 3 finished-----------------------';
}

void task3() {
  final randomNouns = Mocky.words(100);

  final nounsMap = randomNouns.fold(
    {},
    (dictionary, noun) => {...dictionary, noun: noun.length},
  );

  print(nounsMap);

  final nounsMapFiltered = Map.fromEntries(
      nounsMap.entries.where((entry) => entry.value % 2 == 0)
  );

  print(nounsMapFiltered);
}
