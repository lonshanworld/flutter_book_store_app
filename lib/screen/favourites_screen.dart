import "package:flutter/material.dart";

import "../models/book.dart";
import "../Widgets/book_item.dart";

class FavouritesScreen extends StatelessWidget {

  final List<Book> favourite;

  FavouritesScreen(this.favourite);

  @override
  Widget build(BuildContext context) {
    if(favourite.isEmpty){
      return Center(
        child: Text("No Favourite Books!!!"),
      );
    }else{
      return ListView.builder(
        itemCount: favourite.length,
        itemBuilder: (aa,index){
          return BookItem(
            id: favourite[index].id,
            title: favourite[index].title,
            ImageUrl: favourite[index].ImageUrl,
            price: favourite[index].Price,
            duration: favourite[index].duration,
            ArthorName: favourite[index].AuthorName,
          );
        },
      );
    }
  }
}
