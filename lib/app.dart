import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sample/config/routers/app_routes.dart';
import 'package:sample/config/themes/app_theme.dart';
import 'package:sample/utils/services/theme_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeService().getSavedThemeMode(),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
