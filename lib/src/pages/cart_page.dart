import 'package:flutter/material.dart';
// Widget
import '../widgets/cart_order.dart';
// Page
// import '../pages/signin_page.dart';

class CartPage extends StatefulWidget {
  @override
  CartPageState createState() => CartPageState();
}

// Pagina con la cesta de productos elegidos
class CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Titulo de la pagina
        title: Text(
          "Tu cesta de comida",
          style: TextStyle(color: Colors.grey[700], fontFamily: 'Lobster', fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Scrollbar(
        // Widget con la lista de pedidos
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CartCard(),
            CartCard(),
            CartCard(),
            CartCard(),
          ],
        ),
      ),
      bottomNavigationBar: _buildTotalContainer(), // Informacion fija
    );
  }

  Widget _buildTotalContainer() {
    // Container con la informacion del pedido y el boton de confirmacion
    return Container(
      height: 220.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          Row( // Informacion del coste del pedido
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total:",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                "40.0 €",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Descuento:",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                "4.0 €",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "IVA:",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                "7.5 €",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 40.0,
            color: Color(0xFFD3D3D3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Sub-Total:",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                "43.5 €",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            // Boton para confirmar el pedido
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Center(
                child: Text(
                  "Confirmar Pedido",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
