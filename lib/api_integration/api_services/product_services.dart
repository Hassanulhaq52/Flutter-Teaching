import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;

// class ProductServices {
//   Future<List<ProductModel>?> getProducts() async {
//     try {
//       var response = await http
//           .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//       print(response);
//
//       var body = jsonDecode(response.body);
//       if (response.statusCode == 200) {
//         List<ProductModel> productsData =
//             body.map((e) => ProductModel.fromJson(e)).toList();
//         print(productsData);
//         return productsData;
//       } else {
//         debugPrint('ERROR: ${response.statusCode}');
//       }
//     } catch (error) {
//       debugPrint(error.toString());
//     }
//   }
// }

class BioServices{

  Future<BioModel?> getBioData() async {
    try {
      Uri url = Uri.parse('https://reqres.in/api/users/2');

      http.Response response = await http.get(url);
      debugPrint('Response status: ${response.statusCode}');

      final body = jsonDecode(response.body);
      debugPrint(response.body);

      if (response.statusCode == 200) {
        BioModel bioData = BioModel.fromJson(body);
        return bioData;
      } else {
        debugPrint('ERROR : ${response.statusCode}');
      }
    } catch (error) {
      debugPrint(error.toString());
    }
  }

}


