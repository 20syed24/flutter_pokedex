import 'package:flutter/material.dart';
import 'package:pokedex/configs/AppColors.dart';
import 'package:pokedex/screens/home/home.dart';
import 'package:pokedex/screens/pokedex/pokedex.dart';
import 'package:pokedex/screens/pokemon_info/pokemon_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'CircularStd',
        textTheme: Theme.of(context).textTheme.apply(displayColor: AppColors.black),
        scaffoldBackgroundColor: AppColors.lightGrey,
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => Home(),
        "/pokedex": (context) => Pokedex(),
        "/pokemon-info": (context) => PokemonInfo(),
      },
    );
  }
}
