// import 'package:app/api_integration/api_services/product_services.dart';
// import 'package:app/api_integration/models/product_model.dart';
// import 'package:flutter/material.dart';
//
// class ProductScreen extends StatelessWidget {
//   const ProductScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<List<ProductModel>?>(
//         future: ProductServices().getProducts(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return Center(
//               child: Text(snapshot.data!.length.toString()),
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }


import 'package:app/api_integration/api_services/product_services.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  // ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<BioModel?>(
          future: BioServices().getBioData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final Data testApiData = snapshot.data!.data;
              final Support testApiSupport = snapshot.data!.support;

              return Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(
                    8,
                  ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      testApiData.avatar != 'null'
                          ? Container(
                        width: double.infinity,
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                testApiData.avatar ?? '',
                              ),
                              fit: BoxFit.fill),
                        ),
                      )
                          : Container(
                        margin: const EdgeInsets.all(
                          10,
                        ),
                        padding: const EdgeInsets.all(
                          20,
                        ),
                        color: Colors.red,
                        child: const Text(
                          "Image not available",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            padding: const EdgeInsets.all(
                              10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            child: Text(
                              'Name: ${'${testApiData.first_name} ${testApiData.last_name}'}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Email: ${testApiData.email}',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Purpose: ${testApiSupport.text}',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}