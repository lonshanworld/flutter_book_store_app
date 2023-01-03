import "package:flutter/material.dart";
import 'package:training3clone/screen/Book_shelf_screen.dart';

class CategoryItem extends StatelessWidget {

  final String id;
  final String title;
  final Color colors;
  final Color colorforfont;

  CategoryItem(this.id ,this.title,this.colors,this.colorforfont);

  void selectCategory(BuildContext bc){
    Navigator.of(bc).pushNamed(
      BookShelfScreen.routeName,
      arguments: {"id":id, "title":title, "colors":colors, "colorforfont": colorforfont},
    );
  }

  @override
  Widget build(BuildContext context) {
    // return InkWell(
    //   child: Container(
    //     child: Text(title),
    //     color: colors,
    //   ),
    //   onTap: () => selectCategory(context),
    // );
    return Container(
      padding: EdgeInsets.all(13),
      child: ElevatedButton(
        onPressed: () => selectCategory(context),
        child: Text(
          title,
          style: TextStyle(color: colorforfont,fontSize: 20,),
          textAlign: TextAlign.center,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
