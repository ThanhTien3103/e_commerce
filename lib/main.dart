import 'package:e_commerce/bindings/binding.dart';
import 'package:e_commerce/src/utils/user_preferency.dart';
import 'package:e_commerce/src/view/scenes/on_broad_scenes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


Future main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferency.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
         useMaterial3: true,
      ),
      initialBinding: DependencyBindings(),
      home: const OnBroadScenes(),
    );
  }
}

