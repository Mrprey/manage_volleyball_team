import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Initial test', (WidgetTester tester) async {
    // Teste inicial para verificar se o aplicativo inicia sem erros
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
