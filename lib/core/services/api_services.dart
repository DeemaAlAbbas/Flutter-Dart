import 'package:get/get.dart';
//import'package:flutter_application_1/ui/sign_up/sign_up_controller.dart';

class ApiServices extends GetxService {
  Future<dynamic> postRequest(String url, Map<String, dynamic> data) async {
   try{
    return {
      'status': 'success',
      'message': 'Account created successfully',
      'data': data,
    };
   } catch (e) {print('Error in postRequest: $e');
    return null;
  }}
}