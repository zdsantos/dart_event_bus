import '../user.dart';

class UserLoggedInEvent {
  User? user;

  UserLoggedInEvent(this.user);
}