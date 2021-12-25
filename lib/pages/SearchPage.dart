import 'package:fiska/models/product.dart';
import 'package:fiska/models/product_detail.dart';
import 'package:fiska/services/api_service.dart';
import 'package:fiska/widgets/shimmer_loading.dart';
import 'package:flutter/material.dart';

class ProductSearchDelegate extends SearchDelegate<String> {
  final products = ['Bag', 'Shoes', 'Glass', 'watches', 'Caps'];
  final recentProducts = ['Bag', 'Glass', 'Caps'];

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
                showSuggestions(context);
              }
            })
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(query),
        ],
      ));

  @override
  Widget buildSuggestions(BuildContext context) {
    FutureBuilder<List<ProductElement>>(
      future: ApiService.fetchProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return buildSuggestionsSuccess(products);
        } else {
          return ShimmerLoading();
        }
      },
    );
    final suggestions = query.isEmpty
        ? recentProducts
        : products.where((product) {
            final productLower = product.toLowerCase();
            final queryLower = query.toLowerCase();

            return productLower.startsWith(queryLower);
          }).toList();
    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        final queryText = suggestion.substring(0, query.length);
        final remainingText = suggestion.substring(query.length);

        return ListTile(
          onTap: () {
            query = suggestion;

            showResults(context);
          },
          //title: Text(suggestion),
          title: RichText(
            text: TextSpan(
              text: queryText,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: remainingText,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

// import 'package:flutter/material.dart';

// class SearchPage extends StatefulWidget {
//   const SearchPage({Key key}) : super(key: key);

//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: Container(
//             height: 45,
//             child: TextField(
//               autofocus: true,
//               cursorColor: Colors.grey,
//               decoration: InputDecoration(
//                 contentPadding:
//                     EdgeInsets.symmetric(horizontal: 20, vertical: 0),
//                 filled: true,
//                 fillColor: Colors.white,
//                 prefixIcon: Icon(Icons.search, color: Colors.black),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(50),
//                     borderSide: BorderSide.none),
//                 hintText: "Search e.g Sweatshirt",
//                 hintStyle: TextStyle(fontSize: 14, color: Colors.black),
//               ),
//             ),
//           ),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Opacity(
//                 opacity: .7,
//                 child: Container(
//                   width: double.infinity,
//                   height: 250,
//                   child: Image(image: AssetImage("assets/images/search.png")),
//                 )),
//             SizedBox(
//               height: 40,
//             ),
//             Text(
//               "Type to search ...",
//               style: TextStyle(fontSize: 20),
//             )
//           ],
//         ));
//   }
// }
