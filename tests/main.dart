import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:get_it/get_it.dart';
import 'package:test/test.dart';

import '../bin/controllers/logger.dart';
import '../bin/controllers/auth_controller.dart';
import '../bin/controllers/router.dart';
import '../bin/models/user.dart';

var printLog = [];
void print(String s) => printLog.add(s);

void main() {
  setUp(() {
    GetIt.I.registerSingleton(EventBus());
    GetIt.I.registerSingleton(Logger());
    GetIt.I.registerSingleton(AuthController());
    GetIt.I.registerSingleton(Router());
  });

  AuthController auth;

  test('Login Event', () {
    auth = GetIt.I<AuthController>();
    var user = User();
    user.id = 1;
    user.login = '@user1';

    auth.login(user);
    auth.logout();
  });
}