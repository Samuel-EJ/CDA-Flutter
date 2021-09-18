import 'package:flutter/material.dart';
import 'package:centro_de_actividades/screens/activities/activities_screen.dart';
import 'package:centro_de_actividades/screens/assignatures/assignature_screen.dart';
import 'package:centro_de_actividades/screens/login/register/register_screen.dart';
import 'package:centro_de_actividades/screens/typeLearning/typeLearning_screen.dart';
import 'package:centro_de_actividades/screens/login/login/login_screen.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    'login': (BuildContext context) => LoginScreen(),
    'register': (BuildContext context) => RegisterScreen(),
    'assignatures': (BuildContext context) => AssignatureScreen(),
    'typeLearning': (BuildContext context) => TypeLearningScreen(),
    'activities': (BuildContext context) => ActivitiesScreen(),
  };
}
