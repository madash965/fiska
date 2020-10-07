import 'package:fiska/models/product.dart';
import 'package:flutter/material.dart';

class ProductSearchDelegate extends SearchDelegate<Product> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text("Your query is $query"));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
