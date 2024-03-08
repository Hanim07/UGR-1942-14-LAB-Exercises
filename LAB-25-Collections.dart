class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

void main() {
  List<Product> cart = [];
  cart.add(Product('Orange', 350.0));
  cart.add(Product('Watermelon', 420.5));

  double totalPrice = cart.map((product) => product.price).reduce((a, b) => a + b);
  print('Total price: $totalPrice');

  cart.removeWhere((product) => product.name == 'Orange');
  print('Updated cart: $cart');
}
