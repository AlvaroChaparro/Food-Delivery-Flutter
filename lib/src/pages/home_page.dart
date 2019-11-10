import 'package:flutter/material.dart';
import '../widgets/home_top.dart';
import '../widgets/food_category.dart';
import '../widgets/search_field.dart';
import '../widgets/show_foods.dart';

// Model
import '../models/food_model.dart';
// Data
import '../data/food_data.dart';

// Ventana Principal de la aplicacion
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 35.0, left: 16.0, right: 16.0),
        children: <Widget>[
          // Componentes de la Ventana
          HomeTop(),
          FoodCategory(),
          SizedBox(
            height: 10.0,
          ), // Margen entre widgets
          SearchField(),
          SizedBox(
            height: 15.0,
          ),
          Row(
            // Fila con texto
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Comida mas popular",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Ver todos",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Column(
            // Columna con la lista de comidas
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: ShowFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
        reviews: food.reviews,
      ),
    );
  }
}
