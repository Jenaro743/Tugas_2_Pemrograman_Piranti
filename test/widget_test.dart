import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tugas_2_/main.dart';

void main() {
  testWidgets('student card shows the supplied identity and photo', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('UNIVERSITAS SURYAKENCANA'), findsOneWidget);
    expect(find.text('Mohamad Agip Jenaro'), findsOneWidget);
    expect(find.text('TEKNIK INFORMATIKA'), findsOneWidget);
    expect(find.byKey(const ValueKey('profile-photo')), findsOneWidget);
  });
}
