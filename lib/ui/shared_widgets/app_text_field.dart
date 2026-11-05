import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared_widgets/colors.dart';
import 'package:flutter_application_1/ui/app_text_style.dart';
class AppTextField extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool? obscureText;

  const AppTextField({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.errorText,
    this.validator,
    this.obscureText = false, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     controller: controller,
     ///// validator: validator!=null
       ///? (value) => validator!(value??'')
       ///: (value) {
        ///if (value ==null || value.isEmpty) {
        ///  return "هذا الحقل مطلوب*";
       /// }
       /// return null;
      ///},
      obscureText: obscureText!,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyle.s14_w400(color: AppColors.borderColor),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorText: errorText,
        //errorText:
      ),
      onChanged: onChanged,
    );
    
  }
}
