import 'package:flutter/material.dart';

// Widget para las comidas en la cesta
class CartCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alineamos los elementos de la fila
          children: <Widget>[
            Container(
              // Container con la caja con las cantidades
              height: 75.0,
              width: 45.0,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Color(0xFFD3D3D3)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Color(0xFFD3D3D3),
                      )),
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 18.0, /*color: Color(0xFFD3D3D3)*/
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xFFD3D3D3),
                      )),
                ],
              ),
            ),
            SizedBox(
              width: 18.0,
            ),
            Container(
              // Container con la imagen del producto
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/pizza.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(4.0, 4.0)),
                ],
              ),
            ),
            SizedBox(
              width: 18.0,
            ),
            Column(
              // Columna con la informacion del pedido
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Pizza Margarita",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text("12.0 \u20AC", // \u20AC symbolo de euros
                    style: TextStyle(color: Colors.orange, fontSize: 16.0)),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  // Lista de toppings
                  height: 25.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 7.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Tomate",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "x",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 7.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Queso",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "x",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 7.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Oregano",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "x",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
                // Boton para cancelar pedido
                onTap: () {},
                child: Icon(
                  Icons.cancel,
                  color: Colors.grey,
                )),
          ],
        ),
      ),
    );
  }
}
