import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared_widgets/colors.dart';
import 'package:flutter_application_1/ui/shared_widgets/app_button.dart';
import'package:flutter_application_1/ui/shared_widgets/app_text_field.dart';
import 'package:get/get.dart';
import'package:flutter_application_1/ui/sign_up/sign_up_controller.dart';

class SignUpScreen extends StatelessWidget {
  //bool _isPasswordVisible = false;

 final controller = Get.put(SignUpController());
@override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: controller.formKey,
            child: Column(children: [
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
      },
    ),
  ],
),

const SizedBox(height:24),
           //container for the logo
           Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
      
            child:  Center(
  child: Text(
    "Logo",
    style: TextStyle(
      fontSize:16,fontWeight: FontWeight.bold,color:AppColors.secondaryColor,
    ),
  ),
  ),
),
const SizedBox(height:19),
Text(
  " إنشاء حساب",
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  ),
),
SizedBox(height: 5),
Text(
  "أدخل المعلومات المطلوبة ادناه ",
  style: TextStyle(
    fontSize: 12,
  
    color: AppColors.grey,
  ),
),


const SizedBox(height:51),


AppTextField(
  hintText: "الاسم الكامل",
  controller: controller.fullNameController,
  prefixIcon: Icon(Icons.person),
  
),

const SizedBox(height:30),

AppTextField(
  hintText: "البريد الالكتروني",
  controller: controller.emailController,
  prefixIcon: Icon(Icons.email),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'هذا الحقل مطلوب';
     // if (!value.contains('@')||!value.contains('.')) {
       // return 'yOUR eMAIL MUST CONTAIN @ AND .';
      //};
    }
    return null;
  },
),

const SizedBox(height:30),
Obx(() =>
AppTextField(
  hintText: "كلمة المرور",
  controller:controller.passwordController,
  prefixIcon: Icon(Icons.lock),
 
  obscureText: controller.isPasswordVisible.value, 
  suffixIcon: IconButton(
    icon: Icon(
      controller.isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
    ),
    onPressed: ()=> controller.togglePasswordVisibility(),
  ),
),),

const SizedBox(height:30),
Obx(() =>
AppTextField(
  hintText: "تأكيد كلمة المرور",
  controller: controller.confirmPasswordController ,
  prefixIcon: Icon(Icons.lock),
  obscureText: !controller.isConfirmPasswordVisible.value,
  suffixIcon: IconButton(
    icon: Icon(
      controller.isConfirmPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
    ),
    onPressed: ()=> controller.toggleConfirmPasswordVisibility()
  ),
),),
const SizedBox(height:30),

AppButton(
  text: "إنشاء حساب",
  onPressed: () {
    // Handle sign up logic here
    controller.SignUp();
  },
),

const SizedBox(height: 60),
Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children:[
    Text("بمتابعتك أنت توافق على ",style: TextStyle(fontSize: 10,color: AppColors.blackColor),),



    TextButton(
      style:TextButton.styleFrom(padding: EdgeInsets.zero,minimumSize:Size.zero),
      onPressed: () {
        // Handle terms and conditions navigation
      },
      child: Text(
        "الشروط والأحكام",
        style: TextStyle(fontSize: 10, color: AppColors.accentColor),

      ),
    ),
    Text(" و ",style: TextStyle(fontSize: 10,color: AppColors.blackColor),),

    TextButton(
      style:TextButton.styleFrom(padding: EdgeInsets.zero,minimumSize:Size.zero),
      onPressed: () {
        // Handle privacy policy navigation
      },
      child: Text(
        "سياسة الخصوصية",
        style: TextStyle(fontSize: 10, color: AppColors.accentColor),
      ),
    ),
  ]
)








]),
        ),
      ),
    ));
  }
}
