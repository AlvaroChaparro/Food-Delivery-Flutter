import 'package:flutter/material.dart';

// Construccion de las tarjetas para las categorias de comidas
class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.categoryName, this.imagePath, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.0),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 65.0,
                width: 65.0,
              ),
              SizedBox(
                width: 16.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(categoryName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  Text("$numberOfItems Resultados")
                ],
              ),
            ],
          ),
        )));
  }
}
