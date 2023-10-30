
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http ;
class Auth {


bool SaveUserInfo (String? Name,String? Email,String? uid){
   dotenv.load(fileName: ".env").then((value) {  
    String? server_url = dotenv.env["SERVER_URL"];
   sendUserDataToServer(baseURL: server_url, Name: Name, Email: Email,Uid: uid);

   });

 
  return false;

}

Future sendUserDataToServer({required baseURL,required String? Name,required  String? Email,String?Uid}) async {
  String  Endpoint = "$baseURL/UserData";
  final url = Uri.parse("$Endpoint");
  final response = await http.post(url,body: {"Name":Name,"Email":Email,"Uid":Uid});
  print(response.body);
}
}