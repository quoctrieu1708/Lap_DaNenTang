import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/lap2.dart';


void main() {
  testWidgets('MiCardApp UI Test', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(const MiCardApp());

    // Kiểm tra tên hiển thị
    expect(find.text('Nguyễn Văn Quốc Triệu'), findsOneWidget);

    // Kiểm tra nghề nghiệp
    expect(find.text('FLUTTER DEVELOPER'), findsOneWidget);

    // Kiểm tra số điện thoại
    expect(find.text('0948785332'), findsOneWidget);

    // Kiểm tra email
    expect(find.text('quoctrieu17082005@email.com'), findsOneWidget);

    // Kiểm tra icon phone
    expect(find.byIcon(Icons.phone), findsOneWidget);

    // Kiểm tra icon email
    expect(find.byIcon(Icons.email), findsOneWidget);

    // Kiểm tra avatar có tồn tại
    expect(find.byType(CircleAvatar), findsOneWidget);

    // Kiểm tra có 2 Card (phone + email)
    expect(find.byType(Card), findsNWidgets(2));
  });
}