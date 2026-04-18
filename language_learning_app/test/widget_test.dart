// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:language_learning_app/main.dart';

void main() {
  testWidgets('App loads home categories', (WidgetTester tester) async {
    await tester.pumpWidget(const TokuApp());

    expect(find.text('Toku'), findsOneWidget);
    expect(find.text('Numbers'), findsOneWidget);
    expect(find.text('Family Members'), findsOneWidget);
    expect(find.text('Colors'), findsOneWidget);
    expect(find.text('Phrases'), findsOneWidget);
  });
}
