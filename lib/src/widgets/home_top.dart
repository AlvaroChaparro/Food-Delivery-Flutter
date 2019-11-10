import 'package:flutter/material.dart';

// Componente superior de la ventana principal
class HomeTop extends StatelessWidget {
  final estiloTitulo = TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Lobster',
      color: Colors.grey[700]);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      // Titulo y boton de ayuda
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("¿ Que quieres", style: estiloTitulo),
              Text("  de comer Hoy ?", style: estiloTitulo)
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.help,
                size: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              tooltip: 'Increase volume by 10',
              onPressed: () => appInfo(context)),
        ],
      ),
    );
  }

  // AlertDialog con informacion sobre la aplicacion
  void appInfo(BuildContext context) {
    var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      title: Text("Ayuda de la Aplicación",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
              color: Colors.grey[700])),
      content: Form(
        child: SingleChildScrollView(
          // padding: EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Página Home\n",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              Text(
                  "\t- Carrousel horizontal con las distintas categorias de comidas\n" +
                      "\t- Barra de busqueda de Restaurantes\n" +
                      "\t- Listado de productos mas populares\n"),
              Text("Página Cesta\n",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              Text("\t- Listado de productos en la cesta\n" +
                  "\t- Resumen de los precios totales\n" +
                  "\t- Boton para confirmar el pedido\n"),
              Text("Página Perfil\n",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              Text("\t- Avatar y Nombre del Usuario\n" +
                  "\t- Resumen de las estadisticas del usuario\n" +
                  "\t- Lista de comidas pedidas recientemente\n"),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
