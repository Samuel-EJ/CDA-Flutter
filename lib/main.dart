import 'package:centro_de_actividades/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Centro de Actividades',
      initialRoute: 'login',
      routes: getAplicationRoutes(),
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(25, 118, 210, 1),
          elevation: 0,
          centerTitle: true,
        ),
      ),
    );
  }
}
