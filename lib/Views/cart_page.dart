import 'package:ecommerce_app/Views/Shared/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("Cart Page",style: appStyle(35, Colors.black, FontWeight.bold),),
      ),
    );
  }
}