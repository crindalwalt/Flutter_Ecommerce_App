import 'package:flutter/material.dart';
import 'package:ecommerce_app/Views/Shared/text_style.dart';
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Page",style: appStyle(35, Colors.black, FontWeight.bold),),
      ),
    );
  }
}