import 'dart:io';
import 'dart:math';

// Task 1
// void main() {
//   final vals = [1, 2, 3, 4, 5, 6];

//   final res = vals.map((e) => e * 3);
//   print(res);
// }

// Task 2
// void main() {
//   final vals = [1, 2, 3, 4, 5, 6];

//   final res = vals.map((e) => e + 3);
//   print(res);
// }

// Task 3
// void main() {
//   List<String> numbers = ["asd", "asdaa", "asdaaa"];
//   for (int i = 0; i < numbers.length; i++) {
//     List<String> asd = numbers.map((newNUm) => newNUm).toList();
//     print(asd[i]);
//   }
// }

// Task 4
// void main() {
//   int base = 2;
//   int numberOfTerms = 5;

//   List<int> powersList = List.generate(
//     numberOfTerms,
//     (index) => List.generate(index + 1, (exp) => base.pow(exp)).last,
//   );

//   print("Powers List: $powersList");
// }

// extension PowerExtension on int {
//   int pow(int exponent) {
//     int result = 1;
//     for (int i = 0; i < exponent; i++) {
//       result *= this;
//     }
//     return result;
//   }
// }

// Task 5
// void main() {
//   String input = "Hello, World!";

//   String result = input
//       .split('')
//       .map((char) {
//         final lowerChar = char.toLowerCase();
//         final isUnique = uniqueChars.add(lowerChar);

//         return isUnique ? lowerChar : '';
//       })
//       .where((char) => char.isNotEmpty)
//       .join();

//   print("Original String: $input");
//   print("Result String: $result");
// }

// Set<String> uniqueChars = Set<String>();

// Task 6
// void main() {
//   List<int> list1 = [1, 2, 3, 4, 5];
//   List<int> list2 = [5, 4, 3, 2, 1];

//   List<int> sumList = List.generate(
//     list1.length,
//     (index) => list1[index] + list2[index],
//   );

//   List<int> diffList = List.generate(
//     list1.length,
//     (index) => list1[index] - list2[index],
//   );

//   print("List 1: $list1");
//   print("List 2: $list2");
//   print("Sum of Lists: $sumList");
//   print("Difference of Lists: $diffList");
// }

// Task 7
// void main() {
//   List<dynamic> tuple = ['42', 'Hello', '3.14'];

//   int integerValue = int.tryParse(tuple[0] as String) ?? 0;
//   String stringValue = tuple[1] as String;
//   double doubleValue = double.tryParse(tuple[2] as String) ?? 0.0;

//   List<dynamic> resultList = [integerValue, stringValue, doubleValue];

//   print('Original Tuple: $tuple');
//   print('Extracted and Converted List: $resultList');
// }

// Task 8
// void main() {
//   int n = 40;

//   List<int> fibonacciSquares =
//       generateFibonacci(n).map((fib) => fib * fib).toList();

//   print("First $n Fibonacci Numbers:");
//   for (int i = 0; i < n; i++) {
//     print(fibonacciSquares[i]);
//   }
// }

// Iterable<int> generateFibonacci(int n) sync* {
//   int a = 0, b = 1;
//   for (int i = 0; i < n; i++) {
//     yield a;
//     final int next = a + b;
//     a = b;
//     b = next;
//   }
// }

// Task 9
// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];

//   int sum = numbers.map((number) => number).reduce((a, b) => a + b);

//   print("Array of Integers: $numbers");
//   print("Sum of Elements: $sum");
// }

// Task 10
// void main() {
//   List<int> numbers = [3, -2, 0, 5, -1, 0, 7, 0, -4];
//   int positiveCount = 0;
//   int negativeCount = 0;
//   int zeroCount = 0;
//   for (int number in numbers) {
//     if (number > 0) {
//       positiveCount++;
//     } else if (number < 0) {
//       negativeCount++;
//     } else {
//       zeroCount++;
//     }
//   }
//   int totalCount = numbers.length;
//   double positiveRatio = positiveCount / totalCount;
//   double negativeRatio = negativeCount / totalCount;
//   double zeroRatio = zeroCount / totalCount;
//   print("Array of Integers: $numbers");
//   print("Positive Ratio: $positiveRatio");
//   print("Negative Ratio: $negativeRatio");
//   print("Zero Ratio: $zeroRatio");
// }

// Task 11
// void main() {
//   List<int> list1 = [1, 2, 3, 4, 5];
//   List<int> list2 = [3, 4, 5, 6, 7];

//   if (list1.length != list2.length) {
//     print("Lists must have the same length.");
//     return;
//   }

//   // Use map() to create a list of pairs
//   List<List<int>> pairs = List.generate(
//     list1.length,
//     (index) => [list1[index], list2[index]],
//   );

//   // Create a Map to count the occurrences of each pair
//   Map<List<int>, int> pairCounts = {};

//   pairs.forEach((pair) {
//     if (pairCounts.containsKey(pair)) {
//       pairCounts[pair]++;
//     } else {
//       pairCounts[pair] = 1;
//     }
//   });

//   // Print the counts of each pair
//   pairCounts.forEach((pair, count) {
//     print("$pair : $count times");
//   });
// }

// Task 12

// void main() {
//   List<int> list1 = [1, 2, 3, 4, 5];
//   List<int> list2 = [6, 7, 8, 9, 10];

//   List<int> interleavedList = interleaveListsRandomly(list1, list2);

//   print("List 1: $list1");
//   print("List 2: $list2");
//   print("Interleaved List: $interleavedList");
// }

// List<int> interleaveListsRandomly(List<int> list1, List<int> list2) {
//   List<int> combinedList = [...list1, ...list2];
//   combinedList.shuffle(Random());

//   return combinedList;
// }

// Task 13
// void main() {`
//   Map<String, List<dynamic>> dictionaryOfLists = {
//     "A": [1, 2, 3],
//     "B": ["apple", "banana", "cherry"],
//     "C": [true, false],
//   };

//   List<Map<String, dynamic>> listOfDictionaries =
//       splitDictionaryToList(dictionaryOfLists);

//   print("Dictionary of Lists: $dictionaryOfLists");
//   print("List of Dictionaries: $listOfDictionaries");
// }

// List<Map<String, dynamic>> splitDictionaryToList(
//     Map<String, List<dynamic>> dictionaryOfLists) {
//   return dictionaryOfLists.keys.map((key) {
//     return {key: dictionaryOfLists[key]};
//   }).toList();
// }`


