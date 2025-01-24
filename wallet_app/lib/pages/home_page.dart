import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/my_button.dart';
import 'package:wallet_app/utils/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
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
            height: 200,
            child: ListView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  balance: 5324,
                  cardNumber: 12344,
                  expiryMonth: 10,
                  expiryYear: 30,
                  Color: Colors.deepPurple[300],
                ),
                MyCard(
                  balance: 5325,
                  cardNumber: 123567,
                  expiryMonth: 10,
                  expiryYear: 30,
                  Color: Colors.blue[300],
                ),
                MyCard(
                    balance: 534,
                    cardNumber: 12344,
                    expiryMonth: 10,
                    expiryYear: 30,
                    Color: Colors.green[300]),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade100),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                    iconImagePath: 'lib/icons/money.png', buttonText: 'Send'),
                MyButton(
                    iconImagePath: 'lib/icons/atm-card.png',
                    buttonText: 'Card'),
                MyButton(
                    iconImagePath: 'lib/icons/payment.png', buttonText: 'Bills')
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
