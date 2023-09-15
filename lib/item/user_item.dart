import 'package:flutter/material.dart';
import 'package:tfbets/domain/user.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.people),
      title: Text(
        user.pseudo,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        'Jetons: ${user.nbJeton}',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      onTap: () {
        print('clicked');
      },
    );

    //return Container(
    //  height: 100,
    //  color: Colors.orange,
    //  child: Column(
    //    crossAxisAlignment: CrossAxisAlignment.start,
    //    children: [
    //      Text(
    //        '${user.firstName} ${user.lastName}',
    //        style: Theme.of(context).textTheme.bodyMedium,
    //      ),
    //      Text(
    //        user.address,
    //        style: Theme.of(context).textTheme.bodyMedium,
    //      )
    //    ],
    //  ),
    //);
  }
}
