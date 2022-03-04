import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.add));

    var nextButton = find.byKey(const Key('next'));
    await tester.tap(nextButton);
    await tester.pumpAndSettle();

    var counter = find.byKey(const Key('counter'));
    expect(counter, findsOneWidget);
    var counterText = counter.evaluate().single.widget as Text;
    expect(counterText.data, '2');
  });
}
