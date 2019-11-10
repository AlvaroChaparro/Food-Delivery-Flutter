import 'package:flutter/material.dart';
import 'package:food_delivery/src/screens/main_screen.dart';
// Page
import './signin_page.dart';

// Pagina de Registro
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;

  // Widgets con formateos para las cajas de texto
  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
      ),
    );
  }

  Widget _buildUserTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Nombre de Usuario",
        hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Contraseña",
        hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirmar Contraseña",
        hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleConfirmVisibility = !_toggleConfirmVisibility;
            });
          },
          icon: _toggleConfirmVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleConfirmVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Registro",
              style: TextStyle(fontSize: 50.0, fontFamily: "Lobster"),
            ),
            SizedBox(
              height: 50.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    _buildUserTextField(),
                    SizedBox(
                      height: 16.0,
                    ),
                    _buildEmailTextField(),
                    SizedBox(
                      height: 16.0,
                    ),
                    _buildPasswordTextField(),
                    SizedBox(
                      height: 16.0,
                    ),
                    _buildConfirmPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            GestureDetector( // Boton a la HomeScreen
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MainScreen()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25.0)),
                child: Center(
                  child: Text(
                    "Registrarse",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ),
              ),
            ),
            Divider(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "¿Ya tienes una cuenta?",
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                ),
                SizedBox(width: 10.0),
                GestureDetector( // Boton a la pagina de Login
                  onTap: () {
                    // pushReplacement consigue que con el boton de atras volvamos a
                    // la ventana de la cesta y no a la de inicio de sesion
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage()));
                  },
                  child: Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
