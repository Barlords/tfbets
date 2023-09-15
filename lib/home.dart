import 'package:flutter/material.dart';
import 'package:tfbets/home_tabs/bank_tab.dart';
import 'package:tfbets/home_tabs/rank_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  final List<Widget> _tabs = [
    const BankTab(),
    RankTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Twisted Fate\'s bets',
          style: TextStyle(
            fontFamily: 'BeaufortLOL',
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onBottomBarItemTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), label: 'Jetons'),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events), label: 'Classement'),
        ],
      ),
    );
  }

  void _onBottomBarItemTap(int newIndex) {
    setState(() {
      _index = newIndex;
    });
  }
}
