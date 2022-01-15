import 'package:flutter_test/flutter_test.dart';
import 'package:test_case/flutter.dart';

void main() {
  testWidgets("MyWidget has text and message", (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

    // final textFinder = find.text("T");
    final messageFinder = find.text("M");

    expect(find.text('T'), findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
