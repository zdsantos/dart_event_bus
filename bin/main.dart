import 'package:event_bus/event_bus.dart';
import 'package:get_it/get_it.dart';

import 'controllers/auth_controller.dart';
import 'controllers/logger.dart';
import 'controllers/router.dart';

void main(List<String> arguments) {
  // settingDI();
}

void settingDI() {
  GetIt.I.registerSingleton(EventBus());
  GetIt.I.registerSingleton(Logger());
  GetIt.I.registerSingleton(AuthController());
  GetIt.I.registerSingleton(Router());
}
