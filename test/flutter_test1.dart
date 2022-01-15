import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Find text', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
      body: Text("H"),
    )));
    expect(find.text("H"), findsOneWidget);
  });

  testWidgets('find widget using a Key', (WidgetTester tester) async {
    const testKey = Key('I');
    await tester.pumpWidget(MaterialApp(key: testKey, home: Container()));
    expect(find.byKey(testKey), findsOneWidget);
  });

  testWidgets('Find a specific instance', (WidgetTester tester) async {
    const childWidget = Padding(padding: EdgeInsets.zero);
    await tester.pumpWidget(Container(child: childWidget));

    expect(find.byWidget(childWidget), findsOneWidget);
  });
}
