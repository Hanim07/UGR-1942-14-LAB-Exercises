class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalCost() {
    return price * quantity;
  }
}

void main() {
  Product product = Product('Phone', 8000, 3);
  print('Total cost of ${product.name}: ${product.getTotalCost()}');
}
