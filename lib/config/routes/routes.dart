import 'package:clean_architecture/config/routes/router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  /// Router path
  static String home = "/";
  static String todoList = "/todo-list";
  static String article = "/article";

  /// Setup route for the app
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notHandler;

    router.define(
      home,
      handler: homeHandler,
      transitionType: TransitionType.inFromLeft,
    );

    router.define(
      todoList,
      handler: todoListHandler,
      transitionType: TransitionType.inFromLeft,
    );

    router.define(
      article,
      handler: articleHandler,
      transitionType: TransitionType.inFromLeft,
    );
  }
}
