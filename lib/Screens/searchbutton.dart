import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/searchview.dart';

class SearchButton extends StatelessWidget {
  final double width;
  const SearchButton({Key? key, this.width = 350}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print('object');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchView()),
        );
      },
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: 350,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.grey.shade700),
              Text("Search", style: TextStyle(color: Colors.grey.shade700))
            ],
          )),
    );
  }
}
