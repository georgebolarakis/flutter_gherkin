import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_gherkin_project/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  //  final buttonFinder = find.byTooltip('increment');
  // FlutterDriver driver;

  // setUpAll(() async {
  //   driver = await FlutterDriver.connect();
  // });

  // tearDownAll(() async {
  //   if (driver != null) {
  //     driver.close();
  //   }
  // });

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (WidgetTester tester) async {
 //ARRANGE
      app.main();
      await tester.pumpAndSettle(
        const Duration(seconds: 2),
      );

      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the floating action button to tap on.
      final Finder fab = find.byTooltip('Increment');
//ACT
      // Emulate a tap on the floating action button.
      await tester.tap(fab);

      // Trigger a frame & add 2 seconds delay
      await tester.pumpAndSettle(
        const Duration(seconds: 2),
      );
//ASSERT
      // Verify the counter increments by 1.
      expect(find.text('1'), findsOneWidget);
    });
  });

  testWidgets('tap on the decrement action button, verify counter',
      (WidgetTester tester) async {
    //ARRANGE
    app.main();
    await tester.pumpAndSettle(
      const Duration(seconds: 2),
    );

    // Verify the counter starts at 0.
    expect(find.text('0'), findsOneWidget);

    // Finds the floating action button to tap on.
    final Finder fab = find.byTooltip('subtract');
//ACT
    // Emulate a tap on the floating action button.
    await tester.tap(fab);

    // Trigger a frame & add 2 seconds delay
    await tester.pumpAndSettle(
      const Duration(seconds: 2),
    );
//ASSERT
    // Verify the counter increments by 1.
    expect(find.text('-1'), findsOneWidget);
  });

  testWidgets('tap on the alert action button, verify text',
      (WidgetTester tester) async {
    //ARRANGE
    app.main();
    await tester.pumpAndSettle(
      const Duration(seconds: 2),
    );

    // // Verify the counter starts at 0.
    // expect(find.byKey(ValueKey('alert_text')), findsOneWidget);

    // Finds the floating action button to tap on.
    final Finder fab = find.byKey(const ValueKey('alert'),);
//ACT
    // Emulate a tap on the floating action button.
    await tester.tap(fab);

    // Trigger a frame & add 2 seconds delay
    await tester.pumpAndSettle(
      const Duration(seconds: 2),
    );
//ASSERT
    // Verify the counter increments by 1.
    expect(find.byKey(const ValueKey('alert_text')), findsOneWidget);
  });
}
