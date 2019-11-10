import 'package:flutter/material.dart';

// Widget de busqueda
class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(40.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 14.0),
          hintText: "Buscar comida",
          suffixIcon: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(40.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
