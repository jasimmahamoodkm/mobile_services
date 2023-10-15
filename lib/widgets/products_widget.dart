import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../views/products_view.dart';

class ProductsWidget extends StatefulWidget {
  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  ProductInstance prod_instance = ProductInstance();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Product> productsList = prod_instance.getProductsFromLocalStorage();
    return Row(
      children: [
        Expanded(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _typeController,
                  decoration: InputDecoration(labelText: 'Product Type'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a product type';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _brandController,
                  decoration: InputDecoration(labelText: 'Product Brand'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a product brand';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _modelController,
                  decoration: InputDecoration(labelText: 'Product Model'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a product model';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Product Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a product name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _priceController,
                  decoration: InputDecoration(labelText: 'Price'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a price';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _quantityController,
                  decoration: InputDecoration(labelText: 'Quantity'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a quantity';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final type = _typeController.text;
                      final brand = _brandController.text;
                      final model = _modelController.text;
                      final name = _nameController.text;
                      final price = double.parse(_priceController.text);
                      final quantity = double.parse(_quantityController.text);

                      // Create a Product object and pass it to the onSubmit callback
                      final product =
                          Product(type, brand, model, name, price, quantity);

                      _formKey.currentState!.save();

                      _formKey.currentState!.reset();
                      setState(() {
                        prod_instance.addProductToLocalStorage(product);
                      });
                    }
                  },
                  child: Text('Add Product'),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: productsList.length,
            itemBuilder: (context, index) {
              final product = productsList[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text('AED ${product.price.toStringAsFixed(2)}'),
                leading: Text(product.brand),
                trailing: Text(product.quantity.toStringAsFixed(2)),
              );
            },
          ),
        )
      ],
    );
  }
}
