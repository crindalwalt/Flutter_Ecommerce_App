import 'package:flutter/material.dart';

import 'package:ecommerce_app/Views/Shared/text_style.dart';
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Search Page",style: appStyle(35, Colors.black, FontWeight.bold),),
      ),
    );
  }
}