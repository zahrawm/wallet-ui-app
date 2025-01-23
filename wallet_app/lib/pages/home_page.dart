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
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              child: Row(
                children: [
                  Text(
                    "My ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Cards',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text('Balance'),
                Text('\$2335'),
                Row(
                  children: [Text('*** 3456'), Text('10/244')],
                )
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
