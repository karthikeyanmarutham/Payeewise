/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18,2023 11:27 PM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';


class DashboardRepository {

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