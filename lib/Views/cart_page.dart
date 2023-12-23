import 'package:flutter/material.dart';

import 'package:ecommerce_app/Views/Shared/text_style.dart';
class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cart Page",style: appStyle(35, Colors.black, FontWeight.bold),),
      ),
    );
  }
}