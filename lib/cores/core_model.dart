import 'package:groshop/features/navpage/product_model.dart';

CoreModel coreModel = CoreModel();

class CoreModel {
  static final CoreModel _coreModel = CoreModel._internal();

  factory CoreModel() {
    return _coreModel;
  }

  CoreModel._internal();
  ProductModel?
      _productModel; //=ProductModel(name: name, id: id, price: price, unit: unit, productImage: productImage, qty: qty, rating: rating, description: description, relatedItems: relatedItems);
  void setProduct(ProductModel product) => _productModel = product;
  ProductModel? getProduct = _coreModel._productModel;
}
