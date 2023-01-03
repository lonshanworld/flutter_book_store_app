import "package:flutter/material.dart";
import 'package:training3clone/Widgets/main_drawer.dart';
import 'package:training3clone/screen/Book_Category_screen.dart';
import 'package:training3clone/screen/favourites_screen.dart';
import "../models/book.dart";

class TabScreen extends StatefulWidget {

  final List<Book> favouriteBook;

  TabScreen(this.favouriteBook);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  late List<Map<String,Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState(){
    _pages =[
      {"page":BookCategoryScreen(), "title":"Book Categories"},
      {"page":FavouritesScreen(widget.favouriteBook), "title":"Favourites"},
    ];
    super.initState();
  }

  void _selectPage(int index){
    setState((){
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]["title"] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]["page"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 3, 78, 130),
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        selectedItemColor: Color.fromARGB(255, 170, 198, 226),
        unselectedItemColor: Color(0xFF000A4D),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categoreis",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favourites",
          ),
        ],
      ),
    );
  }
}
