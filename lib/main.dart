import 'package:ecommerce_app/Views/Shared/bottom_nav_item.dart';
import 'package:ecommerce_app/Views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RootApp(),
  ));
}

class RootApp extends StatelessWidget {
  RootApp({super.key});
  final int pageIndex = 0;
  final List<Widget> pageList = [
    HomePage(),
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavigationItem(
                icon: Icons.home,
                callbackFunc: () {},
              ),
              BottomNavigationItem(
                icon: Icons.search,
                callbackFunc: () {},
              ),
              BottomNavigationItem(
                icon: Icons.add_circle,
                callbackFunc: () {},
              ),
              BottomNavigationItem(
                icon: Icons.shopping_cart,
                callbackFunc: () {},
              ),
              BottomNavigationItem(
                icon: Icons.person,
                callbackFunc: () {},
              ),
            ],
          ),
        ),
      ),
      body: pageList[pageIndex],
    );
  }
}
