String launchFns() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();

  return 'Test finished';
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи
/// - age (int) — твій вік
/// - height (double) — твій зріст у метрах
/// - name (String) — твоє ім'я
/// - isStudent (bool) — чи ти студент
void primitives() {
  final age = 32;
  final height = 1.753;
  final name = 'Denys';
  final isStudent = true;

  print('int age: $age');
  print('double height: ${height.toStringAsFixed(2)}');
  print('string name: ${name.toUpperCase()}');
  print('bool isStudent: $isStudent');
  print('--------------------------');
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки, спробуй створити перевір print-ми,
/// що вони не виводяться
/// 3. Map — 3 предмети та їх оцінки
void collections() {
  final colors = <String>['red', 'yellow', 'green'];

  print('Colors List: ${colors.join(', ')}');

  final uniqueMarks = <int>{10, 11, 12};

  print('Marks List: $uniqueMarks');

  final subjectMarks = <String, int>{
    'geography': 11,
    'biology': 11,
    'mathematics': 11,
  };

  print('Subject Marks: $subjectMarks');
  print('--------------------------');
}

/// Завдання 3: var, final, const
/// 1. Створи змінну через var — наприклад, місто проживання
/// та зміни її декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
void varFinalConst() {
  var city = 'Kyiv';
  print('var city: $city');

  city = 'Dnipro';
  print('var city: $city');

  city = 'Chernihiv';
  print('var city: $city');

  print('--------------------------');

  final country = 'Ukraine';
  print('final Country: $country');
  print('--------------------------');

  const amountWeekDays = 7;
  print('const amountWeekDays: $amountWeekDays');
  print('--------------------------');
}

/// Завдання 4: Record
/// Створи іменований та не іменований (позиційний) record
/// з твоїм ім'ям та віком і виведи обидва поля.
void record() {
  final person = ('Denys', 31);

  print('Record person: ${person.$1}, ${person.$2}');

  final person2 = (name: 'Denys', age: 31);

  print('Record person2: ${person2.name}, ${person2.age}');

  print('--------------------------');
}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {
  String? nickname;

  print('nickname: ${nickname ?? 'ToxicUKR'}');

  print('--------------------------');
}
