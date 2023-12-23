
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://source.unsplash.com/random/400x400"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
