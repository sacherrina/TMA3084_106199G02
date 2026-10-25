import 'package:flutter_test/flutter_test.dart';
import 'package:milkymoon/main.dart';

void main() {
  testWidgets('Milky Moon menu displays drinks', (WidgetTester tester) async {
    await tester.pumpWidget(const MilkyMoonApp());

    expect(find.text('MILKY MOON'), findsOneWidget);
    expect(find.text('OUR MENU'), findsOneWidget);

    expect(find.text('Brown Sugar Boba'), findsOneWidget);
    expect(find.text('Taro Milk Tea'), findsOneWidget);
    expect(find.text('Matcha Boba'), findsOneWidget);

    expect(find.text('RM 9.90'), findsOneWidget);
    expect(find.text('RM 8.90'), findsOneWidget);
    expect(find.text('RM 10.90'), findsOneWidget);
  });
}
