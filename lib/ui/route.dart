import 'package:flutter/material.dart';
import 'package:myapp/ui/home/home.dart';
import 'package:myapp/ui/nopage/nopage.dart';
import 'package:myapp/ui/splash/splash.view.dart';




const String splash = "splash";
const String login = "login";
const String home = "home";
const String eventDetail = "event_detail";
const String eventHistory = "event_history";


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = routeSettings.arguments;
    print("100 args : $args");
    var routes = <String, WidgetBuilder>{
      splash: (_) => const SplashView(),
      home: (_) => const HomeView(),
    };


    WidgetBuilder? widgetBuilder = routes[routeSettings.name];


    return MaterialPageRoute(
        settings: RouteSettings(
          name: routeSettings.name,
        ),
        builder: (ctx) =>
            widgetBuilder == null ? const PageNotFound() : widgetBuilder(ctx));
  }


  static Route<dynamic> errorRoute(RouteSettings routeSettings) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext buildContext) {
        return const PageNotFound();
      },
    );
  }
}


