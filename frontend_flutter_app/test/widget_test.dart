import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_flutter_app/src/app/app.dart';

void main() {
  testWidgets('App boots and shows Home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    // App bar title from the first bottom tab.
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Welcome'), findsOneWidget);
  });

  testWidgets('Bottom navigation has 3 destinations', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Explore'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}
