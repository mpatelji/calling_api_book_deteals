import 'dart:convert';
import 'package:http/http.dart' as http;

import 'base_and endpoint.dart';
import 'book_detealsmodel.dart';
import 'getmodel.dart';

class BooksApi{
  Future<BooksModal>getData() async {
    var url = Uri.parse("$baseurl/$endpoint");
    var response = await http.get(url,);
    if (response.statusCode == 200) {
      print("success");
      var responseData = jsonDecode(response.body) ;
      var data = BooksModal.fromJson(responseData);
      return data;
    } else {
      print("not success");
      return BooksModal();
    }
  }
  Future<SearchModal>getDatabar(String name) async {
    var url = Uri.parse("https://api.itbook.store/1.0/search/$name");
    var response = await http.get(url,);
    if (response.statusCode == 200) {
      print("success");
      var responseData = jsonDecode(response.body) ;
      var data = SearchModal.fromJson(responseData);
      return data;
    } else {
      print("not success");
      return SearchModal();
    }
  }
}