import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app.config.dart';
import 'core/router/router.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
)
Future<void> configureDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetIt.I.init();
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter;

  MyApp({super.key}) : _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.routerDelegate,
      routeInformationParser: BeamerParser(),
      themeMode: ThemeMode.dark,
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: _appRouter.routerDelegate,
        alwaysBeamBack: true,
      ),
    );
  }
}
