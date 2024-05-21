import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

// button to show search and im feeling lucky button
class SearchButton extends StatelessWidget {
  final String title;
  final String searchQuery;

  const SearchButton({
    Key? key,
    required this.title,
    this.searchQuery = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      color: searchColor,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchScreen(
              searchQuery: searchQuery,
              start: "0",
            ),
          ),
        );
      },
      child: Text(
        title,
      ),
    );
  }
}
