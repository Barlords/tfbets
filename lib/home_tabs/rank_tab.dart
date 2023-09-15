import 'package:flutter/material.dart';
import 'package:tfbets/domain/user.dart';

import '../item/user_item.dart';

class RankTab extends StatelessWidget {
  RankTab({Key? key}) : super(key: key);

  final List<User> _users = List.generate(15, (index) {
    return User(
      pseudo: 'Pseudo $index',
      nbJeton: index,
    );
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        itemCount: _users.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10,);
        },
        itemBuilder: (context, index) {
          final user = _users[index];
          return UserItem(user: user);
        },
      ),
    );
  }
}
