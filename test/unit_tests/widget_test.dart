import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_integration_test/incrementCounter.dart';
import 'package:unit_integration_test/main.dart';

void main(){
  testWidgets("my app testWidget", (widgetTester) async{
    await widgetTester.pumpWidget(MyApp());

    expect(find.text("0"), findsOneWidget);
    expect(find.text("1"), findsNothing);

  });

  testWidgets("testWidget", (widgetTester) async{
    await widgetTester.pumpWidget(const MyApp());

    expect(find.text("0"), findsOneWidget);
    expect(find.text("1"), findsNothing);

    await widgetTester.tap(find.byType(FloatingActionButton));
    await widgetTester.pump(const Duration(seconds: 1));

    expect(find.text("0"), findsNothing);
    expect(find.text("1"), findsOneWidget);
  });
}