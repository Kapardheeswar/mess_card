import 'package:flutter/material.dart';
import 'package:mess_card/widgets/mess_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Discover the best MessCards!!"),
                ],
              ),
            ),
            MessCard(
                date: "05/11/2023",
                mess: "IFC A",
                price: 30,
                type: "Lunch",
                userName: "Aditya"),
            MessCard(
                date: "05/11/2023",
                mess: "IFC B",
                price: 35,
                type: "Dinner",
                userName: "Kapardhi"),
            MessCard(
                date: "05/11/2023",
                mess: "IFC B",
                price: 45,
                type: "Lunch",
                userName: "Vrishank"),
          ],
        ),
      ),
    );
  }
}
