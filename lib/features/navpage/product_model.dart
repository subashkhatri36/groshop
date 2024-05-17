// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:groshop/cores/assets/app_assets.dart';

///payment page
List<String> paymentList = [
  visa,
  americianExpress,
  masterCard,
  paypal,
  applepay,
];

class PaymentValue {
  final String title;
  final String payment;
  PaymentValue(this.title, this.payment);
}

List<PaymentValue> paymentSummary = [
  PaymentValue('Total Amount', 'Rs 710.00'),
  PaymentValue('Standard Delivery', 'Rs 50.00'),
  PaymentValue('Total Payment', 'Rs 760.00'),
];

///Cateogry Model Data values
final List<CategoryModel> categoryList = [
  CategoryModel(id: 1, category: 'Fruits', product: productFruitList),
  CategoryModel(id: 2, category: 'Vegetables', product: productVegitableList),
  CategoryModel(id: 3, category: 'Mixed', product: productMixedList),
  CategoryModel(id: 4, category: 'Others', product: productMixedList),
];

///product model value for vegitable
final List<ProductModel> productVegitableList = [
  ProductModel(
      name: 'Cabbage',
      id: 1,
      price: 70,
      unit: 'kg',
      productImage: cabbage,
      qty: 1,
      rating: 5,
      description:
          'Cabbage is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Capsicum',
      id: 2,
      price: 90,
      unit: 'kg',
      productImage: capsicum,
      qty: 1,
      rating: 5,
      description:
          'Capsicum is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Carrot',
      id: 3,
      price: 50,
      unit: 'kg',
      productImage: carrot,
      qty: 1,
      rating: 5,
      description:
          'Carrot is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Lemon',
      id: 4,
      price: 50,
      unit: 'kg',
      productImage: lemon,
      qty: 1,
      rating: 5,
      description:
          'Lemon is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'SweetPumkin',
      id: 4,
      price: 40,
      unit: 'kg',
      productImage: sweetPamkin,
      qty: 1,
      rating: 5,
      description:
          'Sweet Pumkin is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Tamato',
      id: 5,
      price: 200,
      unit: 'kg',
      productImage: tamato,
      qty: 1,
      rating: 5,
      description:
          'Tamato is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
];

///product model value for favroit
final List<ProductModel> productFruitList = [
  ProductModel(
      name: 'Banana',
      id: 1,
      price: 50,
      unit: 'kg',
      productImage: banana,
      qty: 1,
      rating: 5,
      description:
          'Banana is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Cherry',
      id: 2,
      price: 60,
      unit: 'kg',
      productImage: cherry,
      qty: 1,
      rating: 5,
      description:
          'Cherry is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Kiwi',
      id: 3,
      price: 75,
      unit: 'kg',
      productImage: kiwi,
      qty: 1,
      rating: 5,
      description:
          'Kiwi is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Mango',
      id: 4,
      price: 100,
      unit: 'kg',
      productImage: mango,
      qty: 1,
      rating: 5,
      description:
          'Mango is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Orange',
      id: 5,
      price: 150,
      unit: 'kg',
      productImage: orange,
      qty: 1,
      rating: 5,
      description:
          'Orange is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Pineapple',
      id: 6,
      price: 50,
      unit: 'kg',
      productImage: pineapple,
      qty: 1,
      rating: 5,
      description:
          'PineApple is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Tamato',
      id: 7,
      price: 200,
      unit: 'kg',
      productImage: tamato,
      qty: 1,
      rating: 5,
      description:
          'Tamato is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
];

/// Poduct Model Value for fruits
final List<ProductModel> productFavList = [
  ProductModel(
      name: 'Banana',
      id: 1,
      price: 50,
      unit: 'kg',
      productImage: banana,
      qty: 1,
      rating: 5,
      description:
          'Banana is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Cabbage',
      id: 2,
      price: 70,
      unit: 'kg',
      productImage: cabbage,
      qty: 1,
      rating: 5,
      description:
          'Cabbage is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Capsicum',
      id: 3,
      price: 90,
      unit: 'kg',
      productImage: capsicum,
      qty: 1,
      rating: 5,
      description:
          'Capsicum is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Carrot',
      id: 4,
      price: 50,
      unit: 'kg',
      productImage: carrot,
      qty: 1,
      rating: 5,
      description:
          'Carrot is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Cherry',
      id: 5,
      price: 60,
      unit: 'kg',
      productImage: cherry,
      qty: 1,
      rating: 5,
      description:
          'Cherry is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Kiwi',
      id: 6,
      price: 75,
      unit: 'kg',
      productImage: kiwi,
      qty: 1,
      rating: 5,
      description:
          'Kiwi is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
];

final List<ProductModel> myCartProductList = [
  ProductModel(
      name: 'Capsicum',
      id: 3,
      price: 90,
      unit: 'kg',
      productImage: capsicum,
      qty: 1,
      rating: 5,
      description:
          'Capsicum is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Carrot',
      id: 4,
      price: 50,
      unit: 'kg',
      productImage: carrot,
      qty: 1,
      rating: 5,
      description:
          'Carrot is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Kiwi',
      id: 6,
      price: 75,
      unit: 'kg',
      productImage: kiwi,
      qty: 1,
      rating: 5,
      description:
          'Kiwi is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
];

///Mix product value
final List<ProductModel> productMixedList = [
  ProductModel(
      name: 'Banana',
      id: 1,
      price: 50,
      unit: 'kg',
      productImage: banana,
      qty: 1,
      rating: 5,
      description:
          'Banana is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Cabbage',
      id: 2,
      price: 70,
      unit: 'kg',
      productImage: cabbage,
      qty: 1,
      rating: 5,
      description:
          'Cabbage is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Capsicum',
      id: 3,
      price: 90,
      unit: 'kg',
      productImage: capsicum,
      qty: 1,
      rating: 5,
      description:
          'Capsicum is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Carrot',
      id: 4,
      price: 50,
      unit: 'kg',
      productImage: carrot,
      qty: 1,
      rating: 5,
      description:
          'Carrot is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Cherry',
      id: 5,
      price: 60,
      unit: 'kg',
      productImage: cherry,
      qty: 1,
      rating: 5,
      description:
          'Cherry is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Kiwi',
      id: 6,
      price: 75,
      unit: 'kg',
      productImage: kiwi,
      qty: 1,
      rating: 5,
      description:
          'Kiwi is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Lemon',
      id: 7,
      price: 50,
      unit: 'kg',
      productImage: lemon,
      qty: 1,
      rating: 5,
      description:
          'Lemon is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Mango',
      id: 8,
      price: 100,
      unit: 'kg',
      productImage: mango,
      qty: 1,
      rating: 5,
      description:
          'Mango is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Orange',
      id: 9,
      price: 150,
      unit: 'kg',
      productImage: orange,
      qty: 1,
      rating: 5,
      description:
          'Orange is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Pineapple',
      id: 11,
      price: 50,
      unit: 'kg',
      productImage: pineapple,
      qty: 1,
      rating: 5,
      description:
          'PineApple is a very good fruit for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'SweetPumkin',
      id: 12,
      price: 40,
      unit: 'kg',
      productImage: sweetPamkin,
      qty: 1,
      rating: 5,
      description:
          'Sweet Pumkin is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
  ProductModel(
      name: 'Tamato',
      id: 13,
      price: 200,
      unit: 'kg',
      productImage: tamato,
      qty: 1,
      rating: 5,
      description:
          'Tamato is a very good Vegitable for body health and extra vitamin and extra energy for body. this is a increase of body for baby and boys',
      relatedItems: [
        cabbage,
        capsicum,
        carrot,
        cherry,
        kiwi,
        lemon,
        mango,
      ]),
];

///Category Model
class CategoryModel {
  final String category;
  final List<ProductModel> product;
  final int id;
  CategoryModel({
    required this.category,
    required this.product,
    required this.id,
  });

  CategoryModel copyWith({
    String? category,
    List<ProductModel>? product,
    int? id,
  }) {
    return CategoryModel(
      category: category ?? this.category,
      product: product ?? this.product,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'product': product.map((x) => x.toMap()).toList(),
      'id': id,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      category: map['category'] as String,
      product: List<ProductModel>.from(
        (map['product'] as List<int>).map<ProductModel>(
          (x) => ProductModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CategoryModel(category: $category, product: $product, id: $id)';

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        listEquals(other.product, product) &&
        other.id == id;
  }

  @override
  int get hashCode => category.hashCode ^ product.hashCode ^ id.hashCode;
}

///Product Model
class ProductModel {
  final String name;
  final int id;
  final double price;
  final String unit;
  final String productImage;
  final int qty;
  final int rating;
  final String description;
  final List<String> relatedItems;
  ProductModel({
    required this.name,
    required this.id,
    required this.price,
    required this.unit,
    required this.productImage,
    required this.qty,
    required this.rating,
    required this.description,
    required this.relatedItems,
  });

  ProductModel copyWith({
    String? name,
    int? id,
    double? price,
    String? unit,
    String? productImage,
    int? qty,
    int? rating,
    String? description,
    List<String>? relatedItems,
  }) {
    return ProductModel(
      name: name ?? this.name,
      id: id ?? this.id,
      price: price ?? this.price,
      unit: unit ?? this.unit,
      productImage: productImage ?? this.productImage,
      qty: qty ?? this.qty,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      relatedItems: relatedItems ?? this.relatedItems,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'price': price,
      'unit': unit,
      'productImage': productImage,
      'qty': qty,
      'rating': rating,
      'description': description,
      'relatedItems': relatedItems,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] as String,
      id: map['id'] as int,
      price: map['price'] as double,
      unit: map['unit'] as String,
      productImage: map['productImage'] as String,
      qty: map['qty'] as int,
      rating: map['rating'] as int,
      description: map['description'] as String,
      relatedItems: List<String>.from(
        (map['relatedItems'] as List<String>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(name: $name, id: $id, price: $price, unit: $unit, productImage: $productImage, qty: $qty, rating: $rating, description: $description, relatedItems: $relatedItems)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.id == id &&
        other.price == price &&
        other.unit == unit &&
        other.productImage == productImage &&
        other.qty == qty &&
        other.rating == rating &&
        other.description == description &&
        listEquals(other.relatedItems, relatedItems);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        id.hashCode ^
        price.hashCode ^
        unit.hashCode ^
        productImage.hashCode ^
        qty.hashCode ^
        rating.hashCode ^
        description.hashCode ^
        relatedItems.hashCode;
  }
}
