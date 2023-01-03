import "package:flutter/material.dart";
import 'package:training3clone/Data.dart';
import 'package:training3clone/Widgets/category_item.dart';

class BookCategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
      ),
      children: BOOK_Categories.map((bookcatdata) =>CategoryItem(bookcatdata.id,bookcatdata.title, bookcatdata.colors, bookcatdata.colorforfont)).toList(),
    );
  }
}
