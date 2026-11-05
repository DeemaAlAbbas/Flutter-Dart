import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared_widgets/colors.dart'; 
class AppButton extends StatelessWidget {
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final String text;
  final Color? textColor;
  final Function onPressed;

  const AppButton({
    super.key,
    this.backgroundColor = Colors.blue,
    this.width = 380,
    this.height = 50,
    required this.text,
    this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () => onPressed(),

      style: ElevatedButton.styleFrom(
        backgroundColor:AppColors.primaryColor,
        disabledBackgroundColor: Colors.grey,
        fixedSize: Size(width!, height!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),

      child: Text(text, style: TextStyle(color: AppColors.secondaryColor, fontSize: 15)),
    );
  }
}
