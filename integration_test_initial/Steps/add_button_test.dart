import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

// StepDefinitionGeneric TapButtonNTimesStep() {
//   return when2<String, int, FlutterWorld>(
//     'I tap the {string} button {int} times',
//     (key, count, context) async {
//       final locator = find.byValueKey(key);
//       for (var i = 0; i < count; i += 1) {
//         await FlutterDriverUtils.tap(context.world.driver, locator);
//       }
//     },
//   );
// }

class StepDefinition{
  StepDefinitionGeneric TapButtonNTimesStep() {
  return when2<String, int, FlutterWorld>(
    'I tap the {string} button {int} times',
    (key, count, context) async {
      final locator = find.byValueKey(key);
      for (var i = 0; i < count; i += 1) {
        await FlutterDriverUtils.tap(context.world.driver, locator);
      }
    },
  );
}
}


// class InitialStateOfApp extends GivenWithWorld<FlutterWorld>{
//   TapButtonNTimesStep() : super(StepDefinitionConfiguration()..timeout = const Duration(seconds: 10));

//   @override
//   Future<void> executeStep(String input1, int input2) async {
//     final locator = find.byValueKey(input1);
//     for(var i = 0; i<input2; i +=1){
//       await FlutterDriverUtils.tap(world.driver,locator, timeout: timeout);

//       @override
//       RegExp get pattern => RegExp(r"I tap the {string} button {int} times");
//     }
//   }
// }