import 'package:flutter/material.dart';

class BankTab extends StatefulWidget {
  const BankTab({Key? key}) : super(key: key);

  @override
  State<BankTab> createState() => _BankTabState();
}

class _BankTabState extends State<BankTab> {
  final int _amount = 250;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.grey.shade900.withOpacity(.5),
          ),
        ),
        Container(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    '$_amount',
                    style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 175,
                      fontFamily: 'BeaufortLOL'
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Image.asset('assets/images/stackcoin.png'),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
