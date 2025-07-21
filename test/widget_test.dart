import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maglo_case_study_flutter/main.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const MagloApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
