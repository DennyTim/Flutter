import 'package:dart_learning_journey/lesson_07/homework/names_deepseek.dart';
import 'package:dart_learning_journey/lesson_07/homework/names_gpt.dart';

String launchFns() {
  task2();

  return '------------------Task 2 finished-----------------------';
}

void task2() {
  final union = ukrainianNamesDeepseek.union(ukrainianNamesGPT);

  print('Спільний список для елементів з 2-ох різних списків: $union');
  print('Кількість елементів: ${union.length}');

  final difference = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print(difference);

  final difference2 = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
  print(difference2);
}
