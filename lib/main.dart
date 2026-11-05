import 'package:flutter/material.dart';
import'package:flutter_application_1/ui/sign_up/sign_up_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/services/api_services.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<ApiServices>(() async {
    return ApiServices();
  });
  runApp(const MyaApp());
}
class MyaApp extends StatelessWidget{
  const MyaApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    home: SignUpScreen(),
    locale: const Locale('ar', 'AE'));
}}