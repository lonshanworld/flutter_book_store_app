import "package:flutter/material.dart";
import 'package:training3clone/screen/filter_screen.dart';

class MainDrawer extends StatelessWidget {


  Widget buildListTile(IconData icon, String title,VoidCallback taphandler){
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: taphandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 170, 198, 226),
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Container(
            color: Color.fromARGB(255, 170, 198, 226),
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Book Filter",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900
              ),
            ),
          ),
          buildListTile(
            Icons.book_outlined,
            "Books",
            (){
              Navigator.of(context).pushReplacementNamed("/main");
            },
          ),
          buildListTile(
            Icons.settings,
            "Filters",
            (){
              Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
