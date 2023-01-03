import "package:flutter/material.dart";
import 'package:training3clone/Data.dart';
import 'package:training3clone/screen/Book_shelf_screen.dart';
import 'package:training3clone/screen/book_indetail_screen.dart';
import 'package:training3clone/screen/filter_screen.dart';
import 'package:training3clone/screen/tab_screen.dart';

import 'models/book.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String,dynamic> _filters ={
    "forAdult" : false,
    "horror": false,
  };

  List<Book> _availableBook = BOOK_DATA;
  List<Book> _favouriteBook = [];

  void _setfilters(Map<String,bool> filterData){
    setState((){
      _filters = filterData;
      _availableBook = BOOK_DATA.where((element){
        if(_filters["forAdult"] && !element.forAdult){
          return true;
        }
        if(_filters["horror"] && !element.Horror){
          return true;
        }
        return false;
      }).toList();
    });
  }

  void _toggleFavourite(String id){
    final existingIndex = _favouriteBook.indexWhere((element) => element.id == id);
    if(existingIndex >= 0){
      setState((){
        _favouriteBook.removeAt(existingIndex);
      });
    }else{
      setState((){
        _favouriteBook.add(BOOK_DATA.firstWhere((element) => element.id == id));
      });
    }
  }

  bool _isBookFavourite(String id){
    return _favouriteBook.any((element) => element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 170, 198, 226),
        ),
      ),
      title: "Hello",
      // home: BookCategoryScreen(),
      initialRoute: "/main",
      routes: {
        "/main": (ctx) => TabScreen(_favouriteBook),
        BookShelfScreen.routeName : (Bss)=> BookShelfScreen(_availableBook),
        BookIndetailScreen.routeName : (Bis)=> BookIndetailScreen(_toggleFavourite,_isBookFavourite),
        FilterScreen.routeName : (fs) => FilterScreen(_filters,_setfilters),
      },
    );
  }
}


