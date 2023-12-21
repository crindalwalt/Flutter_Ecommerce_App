import 'package:flutter/material.dart';
class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    super.key,
    required this.icon,
    required this.callbackFunc,
  });
  final IconData icon;
  final void Function() callbackFunc;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: GestureDetector(
        onTap: callbackFunc,
        child: Icon(icon, color: Colors.white, size: 35),
      ),
    );
  }
}
