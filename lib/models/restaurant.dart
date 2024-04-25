import 'package:collection/collection.dart';
import 'package:dek_mhob/models/cart_item.dart';
import 'package:dek_mhob/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: 'Classic Cheeseburger',
      description: 'Beef patty, cheddar cheese, pickles, onions, ketchup, mustard, sesame seed bun',
      imagePath: 'lib/images/burgers/cheese_burger.jpeg',
      price: 5.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Extra Patty', price: 1.99),
        Addon(name: 'Bacon', price: 1.49),
      ],
    ),
    Food(
      name: 'Aloha Burger',
      description: 'Beef patty, cheddar cheese, grilled pineapple, lettuce, tomato, teriyaki sauce, sesame seed bun',
      imagePath: 'lib/images/burgers/aloha_burger.jpeg',
      price: 6.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Extra Patty', price: 1.99),
        Addon(name: 'Bacon', price: 1.49),
      ],
    ),
    Food(
      name: 'BBQ Burger',
      description: 'Beef patty, cheddar cheese, bacon, onion rings, BBQ sauce, sesame seed bun',
      imagePath: 'lib/images/burgers/bbq_burger.jpeg',
      price: 7.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Extra Patty', price: 1.99),
        Addon(name: 'Bacon', price: 1.49),
      ],
    ),
    Food(
      name: 'Blue Moon Burger',
      description: 'Beef patty, blue cheese, caramelized onions, arugula, balsamic glaze, sesame seed bun',
      imagePath: 'lib/images/burgers/bluemoon_burger.jpeg',
      price: 8.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Extra Patty', price: 1.99),
        Addon(name: 'Bacon', price: 1.49),
      ],
    ),
    Food(
      name: 'Vege Burger',
      description: 'Veggie patty, cheddar cheese, lettuce, tomato, pickles, ketchup, mustard, sesame seed bun',
      imagePath: 'lib/images/burgers/vege_burger.jpeg',
      price: 5.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Extra Patty', price: 1.99),
        Addon(name: 'Bacon', price: 1.49),
      ],
    ),
    // salad
    Food(
      name: 'Asian Sesame Salad',
      description: 'Mixed greens, grilled chicken, mandarin oranges, almonds, sesame seeds, sesame dressing',
      imagePath: 'lib/images/salads/asiansesame_salad.jpeg',
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Chicken', price: 2.99),
        Addon(name: 'Extra Almonds', price: 0.99),
        Addon(name: 'Extra Sesame Seeds', price: 0.99),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description: 'Romaine lettuce, grilled chicken, croutons, parmesan cheese, caesar dressing',
      imagePath: 'lib/images/salads/caesar_salad.jpeg',
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Chicken', price: 2.99),
        Addon(name: 'Extra Croutons', price: 0.99),
        Addon(name: 'Extra Parmesan Cheese', price: 0.99),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description: 'Mixed greens, grilled chicken, feta cheese, olives, cucumbers, tomatoes, greek dressing',
      imagePath: 'lib/images/salads/greek_salad.jpeg',
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Chicken', price: 2.99),
        Addon(name: 'Extra Feta Cheese', price: 0.99),
        Addon(name: 'Extra Olives', price: 0.99),
      ],
    ),
    Food(
      name: 'Quinoa Salad',
      description: 'Mixed greens, grilled chicken, quinoa, avocado, cherry tomatoes, balsamic vinaigrette',
      imagePath: 'lib/images/salads/quinoa_salad.jpeg',
      price: 10.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Chicken', price: 2.99),
        Addon(name: 'Extra Avocado', price: 0.99),
        Addon(name: 'Extra Cherry Tomatoes', price: 0.99),
      ],
    ),
    Food(
      name: 'Southwest Salad',
      description: 'Mixed greens, grilled chicken, black beans, corn, avocado, tortilla strips, chipotle ranch dressing',
      imagePath: 'lib/images/salads/southwest_salad.jpeg',
      price: 10.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra Chicken', price: 2.99),
        Addon(name: 'Extra Black Beans', price: 0.99),
        Addon(name: 'Extra Corn', price: 0.99),
      ],
    ),

    // sides
    Food(
      name: 'Garlic Bread',
      description: 'Toasted bread, garlic, butter, parsley',
      imagePath: 'lib/images/sides/garlic_bread_side.jpeg',
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Garlic', price: 0.99),
        Addon(name: 'Extra Butter', price: 0.99),
        Addon(name: 'Extra Parsley', price: 0.99),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description: 'Battered and deep-fried onion rings',
      imagePath: 'lib/images/sides/onion_rings_side.jpeg',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Batter', price: 0.99),
        Addon(name: 'Extra Onion', price: 0.99),
        Addon(name: 'Extra Frying Oil', price: 0.99),
      ],
    ),
    Food(
      name: 'Loaded Fries',
      description: 'French fries, cheddar cheese, bacon, green onions, ranch dressing',
      imagePath: 'lib/images/sides/loadedfries_side.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Extra Bacon', price: 0.99),
        Addon(name: 'Extra Green Onions', price: 0.99),
      ],
    ),
    Food(
      name: 'Mac and Cheese',
      description: 'Macaroni pasta, cheddar cheese, milk, butter, flour',
      imagePath: 'lib/images/sides/mac_side.jpeg',
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Macaroni', price: 0.99),
        Addon(name: 'Extra Cheddar Cheese', price: 0.99),
        Addon(name: 'Extra Milk', price: 0.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fries',
      description: 'Sweet potato fries, salt, pepper, olive oil',
      imagePath: 'lib/images/sides/sweet_potato_side.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Salt', price: 0.99),
        Addon(name: 'Extra Pepper', price: 0.99),
        Addon(name: 'Extra Olive Oil', price: 0.99),
      ],
    ),

    // drinks
    Food(
      name: 'Classic Lemonade',
      description: 'Lemon juice, sugar, water, ice',
      imagePath: 'lib/images/drinks/lemonade_drink.jpeg',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Lemon Juice', price: 0.99),
        Addon(name: 'Extra Sugar', price: 0.99),
        Addon(name: 'Extra Ice', price: 0.99),
      ],
    ),
    Food(
      name: 'Iced Tea',
      description: 'Black tea, sugar, water, ice',
      imagePath: 'lib/images/drinks/ice_tea_drink.jpeg',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Black Tea', price: 0.99),
        Addon(name: 'Extra Sugar', price: 0.99),
        Addon(name: 'Extra Ice', price: 0.99),
      ],
    ),
    Food(
      name: 'Strawberry Smoothie',
      description: 'Strawberries, banana, yogurt, honey, ice',
      imagePath: 'lib/images/drinks/smoothie_drink.jpeg',
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Strawberries', price: 0.99),
        Addon(name: 'Extra Banana', price: 0.99),
        Addon(name: 'Extra Yogurt', price: 0.99),
      ],
    ),
    Food(
      name: 'Mojito',
      description: 'Mint leaves, lime juice, sugar, soda water, rum, ice',
      imagePath: 'lib/images/drinks/mojito_drink.jpeg',
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Mint Leaves', price: 0.99),
        Addon(name: 'Extra Lime Juice', price: 0.99),
        Addon(name: 'Extra Sugar', price: 0.99),
      ],
    ),
    Food(
      name: 'Caramel Macchiato',
      description: 'Espresso, milk, vanilla syrup, caramel sauce',
      imagePath: 'lib/images/drinks/caramel_drink.jpeg',
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Espresso', price: 0.99),
        Addon(name: 'Extra Milk', price: 0.99),
        Addon(name: 'Extra Vanilla Syrup', price: 0.99),
      ],
    ),

    // desserts
    Food(
      name: 'Classic Brownie',
      description: 'Chocolate, butter, sugar, eggs, flour, vanilla extract',
      imagePath: 'lib/images/desserts/brownie_dessert.jpeg',
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Chocolate', price: 0.99),
        Addon(name: 'Extra Butter', price: 0.99),
        Addon(name: 'Extra Sugar', price: 0.99),
      ],
    ),
    Food(
      name: 'New York Cheesecake',
      description: 'Cream cheese, sugar, eggs, sour cream, vanilla extract, graham cracker crust',
      imagePath: 'lib/images/desserts/cheesecake_dessert.jpeg',
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Cream Cheese', price: 0.99),
        Addon(name: 'Extra Sugar', price: 0.99),
        Addon(name: 'Extra Eggs', price: 0.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description: 'Apples, sugar, cinnamon, butter, flour, pie crust',
      imagePath: 'lib/images/desserts/apple_pie_dessert.jpeg',
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Apples', price: 0.99),
        Addon(name: 'Extra Sugar', price: 0.99),
        Addon(name: 'Extra Cinnamon', price: 0.99),
      ],
    ),
    Food(
      name: 'Red Velvet Cake',
      description: 'Flour, sugar, butter, cocoa powder, red food coloring, buttermilk, vanilla extract',
      imagePath: 'lib/images/desserts/redvelvet_dessert.jpeg',
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Flour', price: 0.99),
        Addon(name: 'Extra Sugar', price: 0.99),
        Addon(name: 'Extra Butter', price: 0.99),
      ],
    ),
    Food(
      name: 'Banoffee Pie',
      description: 'Bananas, toffee, whipped cream, graham cracker crust',
      imagePath: 'lib/images/desserts/banoffee_pie_dessert.jpeg',
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Bananas', price: 0.99),
        Addon(name: 'Extra Toffee', price: 0.99),
        Addon(name: 'Extra Whipped Cream', price: 0.99),
      ],
    ),
  ];

  // Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  final List<CartItem> _cart = [];
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons, quantity: 1));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double totalItem = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        totalItem += addon.price;
      }
      total += totalItem * cartItem.quantity;
    }
    return total;
  }

  // get total items
  int get totalItems {
    int total = 0;
    for (CartItem cartItem in _cart) {
      total += cartItem.quantity;
    }
    return total;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  // helps

  // generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here your receipt.");
    receipt.writeln();

    String formatDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formatDate);
    receipt.writeln();
    receipt.writeln("---------");
    receipt.writeln();
    for (final cartItem in _cart) {
      receipt.writeln("${cartItem.quantity}x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddons)} - ${_formatPrice(cartItem.selectedAddons.fold(0, (sum, addon) => sum + addon.price))}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total Item: $totalItems");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    if (addons.isEmpty) {
      return 'None';
    }
    return addons.map((addon) => addon.name).join(', ');
  }
}
