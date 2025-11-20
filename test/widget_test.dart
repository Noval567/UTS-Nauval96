import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nauval096uts/main.dart'; // ← Ganti sesuai nama project kamu

void main() {
  testWidgets('HomeScreen menampilkan judul & kategori', (tester) async {
    await tester.pumpWidget(const MyShopApp());

    expect(find.text("MyShop Mini"), findsOneWidget);
    expect(find.text("Makanan"), findsOneWidget);
    expect(find.text("Minuman"), findsOneWidget);
    expect(find.text("Elektronik"), findsOneWidget);
  });

  testWidgets('Tap kategori -> ProductListScreen', (tester) async {
    await tester.pumpWidget(const MyShopApp());

    await tester.tap(find.byKey(const ValueKey("category_Makanan")));
    await tester.pumpAndSettle();

    expect(find.text("Daftar Produk Makanan"), findsOneWidget);
    expect(find.text("Roti"), findsOneWidget);
  });

  testWidgets('Tap produk -> ProductDetailScreen', (tester) async {
    await tester.pumpWidget(const MyShopApp());

    await tester.tap(find.byKey(const ValueKey("category_Makanan")));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey("product_Roti")));
    await tester.pumpAndSettle();

    expect(find.text("Roti"), findsOneWidget);
    expect(find.text("Detail dari Roti"), findsOneWidget);
  });
}
