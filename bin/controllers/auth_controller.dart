import 'package:event_bus/event_bus.dart';
import 'package:get_it/get_it.dart';

import '../models/events/user_logged_in_event.dart';
import '../models/events/user_logged_out_event.dart';
import '../models/user.dart';

class AuthController {
  User? loggedUser;
  EventBus? eventBus;

  AuthController() {
    eventBus = GetIt.I<EventBus>();
  }

  void login(User user) {
    // do login
    loggedUser = user;
    eventBus?.fire(UserLoggedInEvent(user));
  }

  void logout() {
    var wasLoggedUser = loggedUser;
    // do logout
    loggedUser = null;
    eventBus?.fire(UserLoggedOutEvent(wasLoggedUser));
  }

}