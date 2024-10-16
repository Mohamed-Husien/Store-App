import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_basket))
        ],
        title: const Text('New Trend'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 50,
        ),
        child: GridView.builder(
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              crossAxisSpacing: 6,
              mainAxisSpacing: 64,
            ),
            itemBuilder: (context, index) {
              return const CustomCard();
            }),
      ),
    );
  }
}
