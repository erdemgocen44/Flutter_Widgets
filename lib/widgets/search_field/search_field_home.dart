import 'package:flutter/material.dart';

class SearchFieldHome extends StatefulWidget {
  const SearchFieldHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SearchFieldHome> createState() => _SearchFieldHomeState();
}

class _SearchFieldHomeState extends State<SearchFieldHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelagate(),
              );
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}

class MySearchDelagate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      onPressed: () {
        if (query.isEmpty) {
          close(context, null); //close searchbar
        } else {
          query = '';
        }
      },
      icon: const Icon(Icons.clear_rounded),
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () => close(context, null), //search barı kapatmak için

      icon: const Icon(Icons.arrow_back_ios_rounded),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      'Turkey',
      'Suisse',
      'Allemand',
      'America',
      'Tokyo',
      'Japonais',
      'France'
    ];
    throw UnimplementedError();
  }
}
