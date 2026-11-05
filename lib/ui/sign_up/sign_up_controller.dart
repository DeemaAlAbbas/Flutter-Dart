import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import'package:flutter_application_1/ui/sign_up/sign_up_screen.dart';
// // here we dont see that 


 class SignUpController extends GetxController {
//finalls
final fullNameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmPasswordController = TextEditingController();
final formKey = GlobalKey<FormState>();


final isPasswordVisible = true.obs;
final isConfirmPasswordVisible = true.obs;


void togglePasswordVisibility(){
  isPasswordVisible.value = !isPasswordVisible.value;
 }

void toggleConfirmPasswordVisibility(){
  isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
}
  bool validateForm() {
    String fullName = fullNameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim(); 
    String confirmPassword = confirmPasswordController.text.trim();
if (fullName.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar('خطأ', 'الرجاء ملء جميع الحقول');
      return false;
    }
bool isEmailValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
    if (!isEmailValid) {
      Get.snackbar('خطأ', 'الرجاء إدخال بريد إلكتروني صالح');
      return false;
    }

  if (password.length < 6) {
      Get.snackbar('خطأ', 'كلمة المرور يجب أن تكون على الأقل 6 أحرف');
      return false;
    }
    if (password != confirmPassword) {
      Get.snackbar('خطأ', 'كلمة المرور وتأكيد كلمة المرور غير متطابقين');
      return false;
    }

    // Additional validation logic can be added here

    return true; // Form is valid
  }
  void SignUp() async {
  {
    if (validateForm()) {
      Get.dialog(
        const Center(child: CircularProgressIndicator()), //  for lock the screen until the process is done 😒🩵
        barrierDismissible: false,);
       
      Get.snackbar('نجاح', 'تم إنشاء الحساب بنجاح');
    }
  }
 }}
 