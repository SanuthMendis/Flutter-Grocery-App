import 'package:http/http.dart' as http;


class ApiServices{
  static final String baseUrl = "https://fakestoreapi.com/";

  static dynamic getAllProducts() async{
    var url = baseUrl+ "products";
    var response = await http.get(Uri.parse(url));
    return response;
  }
}