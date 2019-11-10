import 'package:flutter/material.dart';
import 'package:food_delivery/src/widgets/show_foods.dart';
// Model
import '../models/food_model.dart';
// Data
import '../data/recent_data.dart';

// Pagina de perfil del usuario
class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    // Avatar del usuario
                    tag: 'assets/images/man.png',
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/man.png'))),
                    ),
                  ),
                  // SizedBox(width: 25.0),
                  Column(
                    // Nombre y localidad
                    children: <Widget>[
                      Text(
                        'Alvaro Chaparro',
                        style: TextStyle(
                            fontFamily: 'Lobster',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Ciudad Real, ESP',
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Padding( // Info extra del usuario
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '31 ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'PUNTOS',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '12 ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'REVIEWS',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '43 ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Icon(
                              Icons.restaurant_menu,
                              color: Colors.green[500],
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'PEDIDOS',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row( // Fila con texto sobre la lista de comidas recientes
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Pedidos recientes",
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
              ),
              Column(
                // Columna con la lista de comidas recientes
                children: _foods.map(_buildFoodItems).toList(),
              ),
            ],
          )
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
