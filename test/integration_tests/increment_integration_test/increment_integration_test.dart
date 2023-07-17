import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:unit_integration_test/main.dart' as app;

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets("app integration test", (tester) async{
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}