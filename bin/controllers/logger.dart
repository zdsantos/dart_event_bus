import 'package:event_bus/event_bus.dart';
import 'package:get_it/get_it.dart';

import '../models/events/user_logged_in_event.dart';
import '../models/events/user_logged_out_event.dart';

class Logger {
  EventBus? eventBus;

  Logger() {
    eventBus = GetIt.I<EventBus>();

    eventBus?.on<UserLoggedInEvent>().listen(logLogin);
    eventBus?.on<UserLoggedOutEvent>().listen(logLogout);
  }

  void logLogin(event) {
    print ('${DateTime.now().toUtc()} - Login: ${event.user.login}');
  }

  void logLogout(event) {
    print ('${DateTime.now().toUtc()} - Logout: ${event.user.login}');
  }

}