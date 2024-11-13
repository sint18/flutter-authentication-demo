import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:auth/main.dart';
import 'package:auth/home.dart';

void main() {
  group('Login Page Tests', () {
    testWidgets('Validates empty email and password',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text('Please enter your email address'), findsOneWidget);
      expect(find.text('Please enter your password'), findsOneWidget);
    });

    testWidgets('Validates invalid email format', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.enterText(find.byType(TextFormField).at(1), 'invalidemail');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text('Please enter a valid email address'), findsOneWidget);
    });

    testWidgets('Displays weak password message', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.enterText(find.byType(TextFormField).at(0), 'Test User');
      await tester.enterText(
          find.byType(TextFormField).at(1), 'test@gmail.com');
      await tester.enterText(find.byType(TextFormField).at(2), '123');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Assuming the LoginPage displays 'Weak password' when password is weak
      expect(find.text('Weak password'), findsOneWidget);
    });

    testWidgets('Displays user not found message', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.enterText(find.byType(TextFormField).at(0), 'Test User');
      await tester.enterText(
          find.byType(TextFormField).at(1), 'test@gmail.com');
      await tester.enterText(find.byType(TextFormField).at(2), 'test123');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text('No user found for that email.'), findsOneWidget);
    });

    testWidgets('Successful login navigates to home page',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const MyApp(),
        routes: {
          '/home': (context) => HomePage(),
        },
      ));

      await tester.enterText(find.byType(TextFormField).at(0), 'Test User');
      await tester.enterText(
          find.byType(TextFormField).at(1), 'test@gmail.com');
      await tester.enterText(find.byType(TextFormField).at(2), 'test123');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.text('Welcome, Test User!'), findsOneWidget);
      expect(find.text('Email: test@gmail.com'), findsOneWidget);
    });
  });
}
