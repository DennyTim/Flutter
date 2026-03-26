import 'package:dart_learning_journey/lesson_07/homework/names_deepseek.dart';
import 'package:dart_learning_journey/lesson_07/homework/names_gpt.dart';

String launchFns() {
  task2();

  return 'Test 2 finished';
}

void task2() {
  final union = ukrainianNamesDeepseek.union(ukrainianNamesGPT);

  print('Спільний список для елементів з 2-ох різних списків: $union');
  print('Кількість елементів: ${union.length}');

  final difference = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print(
    'Імена, що є в ukrainianNamesGPT' +
        ', і яких немає в ukrainianNamesDeepseek: $difference',
  );

  final difference2 = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
  print(
    'Імена, що є в ukrainianNamesDeepseek' +
        ', і яких немає в ukrainianNamesGPT: $difference2',
  );
}
