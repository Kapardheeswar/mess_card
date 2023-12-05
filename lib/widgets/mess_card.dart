import 'package:flutter/material.dart';
import 'package:mess_card/screens/description.dart';

class MessCard extends StatelessWidget {
  final String type;
  final String date;
  final String mess;
  final String userName;
  final int price;

  const MessCard({
    super.key,
    required this.type,
    required this.date,
    required this.mess,
    required this.userName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 8.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "for $type on $date in $mess",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text(
                        "by",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Base Price",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Rs: $price",
                        style: TextStyle(
                          color: Colors.orange.shade300,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessCardDescription(),
                          ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: Text(
                        "BID",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
