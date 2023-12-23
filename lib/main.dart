import 'package:ecommerce_app/Controllers/main_screen_notifier.dart';
import 'package:ecommerce_app/Views/Shared/bottom_nav_item.dart';
import 'package:ecommerce_app/Views/cart_page.dart';
import 'package:ecommerce_app/Views/home_page.dart';
import 'package:ecommerce_app/Views/profile_page.dart';
import 'package:ecommerce_app/Views/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => MainScreenNotifier(),
      ),
    ],
    child: const MaterialApp(
      home: RootApp(),
    ),
  ));
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});
  final List<Widget> pageList = const [
    HomePage(),
    SearchView(),
    CartView(),
    CartView(),
    ProfileView(),
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
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
                  callbackFunc: () {
                    mainScreenNotifier.setIndex = 0;
                  },
                ),
                BottomNavigationItem(
                  icon: Icons.search,
                  callbackFunc: () {
                    mainScreenNotifier.setIndex = 1;
                  },
                ),
                BottomNavigationItem(
                  icon: Icons.add_circle,
                  callbackFunc: () {
                    mainScreenNotifier.setIndex = 2;
                  },
                ),
                BottomNavigationItem(
                  icon: Icons.shopping_cart,
                  callbackFunc: () {
                    mainScreenNotifier.setIndex = 3;
                  },
                ),
                BottomNavigationItem(
                  icon: Icons.person,
                  callbackFunc: () {
                    mainScreenNotifier.setIndex = 4;
                  },
                ),
              ],
            ),
          ),
        ),
        body: pageList[mainScreenNotifier.getIndex],
      );
    });
  }
}
