import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                offset: const Offset(10, 20),
              ),
            ],
          ),
          child: const Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'HanaBag LV',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$225',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 80,
          child: Image.asset(
            'assets/.trashed-1720972803-Screenshot_2024-06-12-04-15-30-93_40deb401b9ffe8e1df2f1cc5ba480b12.jpg',
            height: 90,
          ),
        )
      ],
    );
  }
}
