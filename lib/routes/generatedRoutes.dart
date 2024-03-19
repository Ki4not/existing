import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:figma/activityClass.dart';
import 'package:figma/businessLogic/recentsPageBloc/recents_page_bloc.dart';
import 'package:figma/presentations/recentsPage.dart';
import 'package:flutter/material.dart';



class RouteGenerator {
  final RecentsPageBloc recentsPageBloc = RecentsPageBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider<RecentsPageBloc>.value(
                  value: recentsPageBloc,
                  child: RecentsPage(),
                )
              );
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ));
  });
}
