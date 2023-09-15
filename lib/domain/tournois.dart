import 'package:tfbets/domain/user.dart';

class Tournament {
  String name;
  List<User> players;

  Tournament(this.name, this.players);
}