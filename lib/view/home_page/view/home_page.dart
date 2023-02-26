import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_learn/view/details_page/view/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                String data = "a";
                context.go("/details/$data");
              },
              child: const Text("Detay Sayfasına Git"),
            )
          ],
        ),
      ),
    );
  }
}
