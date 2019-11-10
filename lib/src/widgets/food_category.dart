import 'package:flutter/material.dart';
import 'food_card.dart';
// Data
import '../data/category_data.dart';
// Model
import '../models/category_model.dart';

// ListView horizontal con las categorias de comidas
class FoodCategory extends StatelessWidget {
  // Lista de categorias de category_data
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        // El builder nos deja coger el numero de categorias de la lista
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          // Devuelve el listado de items
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
