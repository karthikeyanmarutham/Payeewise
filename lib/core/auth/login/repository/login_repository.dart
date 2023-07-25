/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : Payeewise
/// devloper name : Karthikeyan Maruthachalam
/// created date  : July 25, 2023 12.00 AM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';

class LoginRepository {

  Future<Map<String, dynamic>> fetchData() async{
     Completer<Map<String, dynamic>> completer =
        Completer<Map<String, dynamic>>();
      try{
          //final response = await from your api request using dio or http 

          // if (response.statusCode != 200) {
          //   throw Exception('Failed Message');
          // }

          completer.complete(
            // response.data  
          );
      }catch(e){
          completer.completeError(e);
      }
      
     return completer.future;
  }
}