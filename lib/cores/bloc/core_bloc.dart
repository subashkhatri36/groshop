// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groshop/features/navpage/product_model.dart';

class AppState {
  final ProductModel? productDetail;
  final List<ProductModel>? favroitList;
  final List<ProductModel>? cartList;
  AppState({
    this.productDetail,
    this.favroitList,
    this.cartList,
  });

  AppState copyWith({
    ProductModel? productDetail,
    List<ProductModel>? favroitList,
    List<ProductModel>? cartList,
  }) {
    return AppState(
      productDetail: productDetail ?? this.productDetail,
      favroitList: favroitList ?? this.favroitList,
      cartList: cartList ?? this.cartList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productDetail': productDetail?.toMap(),
      'favroitList': favroitList?.map((x) => x.toMap()).toList(),
      'cartList': cartList?.map((x) => x.toMap()).toList(),
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      productDetail:
          ProductModel.fromMap(map['productDetail'] as Map<String, dynamic>),
      favroitList: List<ProductModel>.from(
        (map['favroitList'] as List<int>).map<ProductModel>(
          (x) => ProductModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      cartList: List<ProductModel>.from(
        (map['cartList'] as List<int>).map<ProductModel>(
          (x) => ProductModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory AppState.fromJson(String source) =>
      AppState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AppState(productDetail: $productDetail, favroitList: $favroitList, cartList: $cartList)';

  @override
  bool operator ==(covariant AppState other) {
    if (identical(this, other)) return true;

    return other.productDetail == productDetail &&
        listEquals(other.favroitList, favroitList) &&
        listEquals(other.cartList, cartList);
  }

  @override
  int get hashCode =>
      productDetail.hashCode ^ favroitList.hashCode ^ cartList.hashCode;
}

abstract class BaseEvent {}

class AddFavroit extends BaseEvent {
  final ProductModel productModel;
  AddFavroit(this.productModel);
}

class RemoveFavroit extends BaseEvent {}

class AddCart extends BaseEvent {
  final ProductModel productModel;
  AddCart(this.productModel);
}

class RemoveCart extends BaseEvent {
  final ProductModel productModel;
  RemoveCart(this.productModel);
}

class IncreaseQty extends BaseEvent {
  final ProductModel productModel;
  IncreaseQty(this.productModel);
}

class DecreaseQty extends BaseEvent {
  final ProductModel productModel;
  DecreaseQty(this.productModel);
}

class AddProduct extends BaseEvent {
  final ProductModel productModel;
  AddProduct(this.productModel);
}

class AppBloc extends Bloc<BaseEvent, AppState> {
  AppBloc(super.initialState) {
    on<AddFavroit>((event, emit) {
      List<ProductModel> favList = [];
      favList.addAll(state.favroitList ?? []);
      favList.add(event.productModel);
      emit(state.copyWith(favroitList: favList));
    });
    on<RemoveFavroit>((event, emit) {});
    on<AddCart>((event, emit) {
      List<ProductModel> cartList = [];
      cartList.addAll(state.cartList ?? []);
      cartList.add(event.productModel);
      emit(state.copyWith(cartList: cartList));
    });
    on<RemoveCart>((event, emit) {
      List<ProductModel> cartList = [];
      cartList.addAll(state.cartList ?? []);
      emit(state.copyWith(cartList: cartList));
    });
    on<IncreaseQty>((event, emit) {
      print('herer');
      ProductModel productModel = event.productModel;
      int qty = productModel.qty;

      productModel.copyWith(qty: qty++);
      emit(state.copyWith(productDetail: productModel));
    });
    on<DecreaseQty>((event, emit) {
      print('here');
      ProductModel productModel = event.productModel;
      int qty = productModel.qty;

      if (qty > 0) {
        productModel.copyWith(qty: qty - 1);
        emit(
          state.copyWith(productDetail: productModel),
        );
      }
    });
    on<AddProduct>((event, emit) {
      emit(state.copyWith(productDetail: event.productModel));
    });
  }
}
