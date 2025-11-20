import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/category.dart';

final List<Category> categories = [
  Category(name: "Makanan", keyId: "category_Makanan"),
  Category(name: "Minuman", keyId: "category_Minuman"),
];

final List<Product> products = [
  Product(
    name: "Roti",
    category: "Makanan",
    keyId: "product_Roti",

    description: "Roti lembut yang dibuat dari gandum pilihan.",
  ),
  Product(
    name: "Burger",
    category: "Makanan",
    keyId: "product_Burger",

    description: "Burger daging sapi premium dengan sayuran segar.",
  ),
  Product(
    name: "Air Mineral",
    category: "Minuman",
    keyId: "product_Air",

    description: "Air mineral murni langsung dari pegunungan.",
  ),
  Product(
    name: "Jus",
    category: "Minuman",
    keyId: "product_Jus",
 
    description: "Jus buah asli tanpa tambahan gula.",
  )
];
