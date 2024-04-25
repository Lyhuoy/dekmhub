import 'package:dek_mhob/components/my_button.dart';
import 'package:dek_mhob/components/my_cart_tile.dart';
import 'package:dek_mhob/models/restaurant.dart';
import 'package:dek_mhob/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart Page'),
            backgroundColor: Theme.of(context).colorScheme.background,
            actions: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Are you sure you want to clear your cart?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            restaurant.clearCart();
                            Navigator.pop(context);
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('No'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text('Your cart is empty'),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];
                                return Padding(
                                  padding: EdgeInsets.only(
                                    top: index == 0 ? 0 : 10,
                                  ),
                                  child: MyCartTile(cartItem: cartItem),
                                );
                              },
                            ),
                          )
                  ],
                ),
              ),
              MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  );
                },
                text: "Go to checkout",
              ),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
