import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      "My",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Cards",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Icon(Icons.add)
              ],
            ),
          )
        ],
        //appbars
        //cars
        //  three buttons
      ),
    );
  }
}
