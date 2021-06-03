import 'package:event_bus/event_bus.dart';
import 'package:get_it/get_it.dart';

import '../models/events/user_logged_in_event.dart';
import '../models/events/user_logged_out_event.dart';

class Router {
  EventBus? eventBus;

  Router() {
    eventBus = GetIt.I<EventBus>();

    eventBus?.on<UserLoggedInEvent>().listen((event) { print('Redirect to page/home'); });
    eventBus?.on<UserLoggedOutEvent>().listen((event) { print('Redirect to page/login'); });
  }
}