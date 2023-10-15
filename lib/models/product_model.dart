class Product {
  final String type;
  final String brand;
  final String model;
  final String name;
  final double price;
  final double quantity;

  Product(
      this.type, this.brand, this.model, this.name, this.price, this.quantity);

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'brand': brand,
      'model': model,
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['type'],
      json['brand'],
      json['model'],
      json['name'],
      json['price'],
      json['quantity'],
    );
  }
}
