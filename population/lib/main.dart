import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:population/core/services/auth_services.dart';
import 'package:population/core/services/population_services.dart';
import 'package:population/core/services/user_services.dart';
import 'package:population/core/viewmodels/population_viewmodel.dart';
import 'package:population/core/viewmodels/user_viewmodel.dart';
import 'package:population/ui/screens/start_up_screen.dart';
import 'package:provider/provider.dart';

import 'core/services/shared_prefrences_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServices();
  runApp(const MyApp());
}

Future<void> setupServices() async {
  final getIt = GetIt.instance;

  getIt.registerSingletonAsync<SharedPerfrencesServices>(
    () async {
      final sharedPerfrencesServices = SharedPerfrencesServices();
      debugPrint('sharedPerfrencesServices is READY');
      await sharedPerfrencesServices.init();
      return sharedPerfrencesServices;
    },
  );

  getIt.registerSingletonAsync<AuthServices>(() async {
    final authServices = AuthServices();
    debugPrint('authService is READY');
    return authServices;
  }, dependsOn: [InitDependency(SharedPerfrencesServices)]);

  getIt.registerSingletonAsync<UserServices>(() async {
    final userServices = UserServices();
    debugPrint('userService is READY');
    return userServices;
  }, dependsOn: [InitDependency(AuthServices)]);

  getIt.registerSingletonAsync<PopulationServices>(() async {
    final populationServices = PopulationServices();
    debugPrint('Popservice is READY');
    return populationServices;
  }, dependsOn: [InitDependency(AuthServices)]);

  await getIt.allReady();
}

class MyApp extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserViewModel>(
          create: (_) => UserViewModel()),
        ChangeNotifierProxyProvider<UserViewModel, PopulationViewModel>(
          create: (_) => PopulationViewModel(),
          update: (context, userViewModel, populationViewModel) => populationViewModel ?? PopulationViewModel(),
        )
      ],
      child: MaterialApp(
        title: 'Population',
        navigatorKey: MyApp.navigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const StartUpScreen(),
      ),
    );
  }
}
