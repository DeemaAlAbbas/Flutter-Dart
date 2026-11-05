import 'package:flutter/material.dart';
import'package:flutter_application_1/ui/sign_up/sign_up_screen.dart';
import 'package:get/get.dart';
void main(){
  runApp(const MyaApp());
}
class MyaApp extends StatelessWidget{
  const MyaApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    home: SignUpScreen(),
    locale: const Locale('ar', 'AE'));
}}