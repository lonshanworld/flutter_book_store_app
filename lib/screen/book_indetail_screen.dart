import "package:flutter/material.dart";
import 'package:training3clone/Data.dart';
import 'package:training3clone/models/book.dart';

class BookIndetailScreen extends StatelessWidget {

  static const routeName = "./BookIndetailScreen";

  final Function toggleFavourite;
  final Function isFavourite;

  BookIndetailScreen(this.toggleFavourite,this.isFavourite);

  @override
  Widget build(BuildContext context) {


    final bookid = ModalRoute.of(context)?.settings.arguments as String;
    final selectedBook = BOOK_DATA.firstWhere((bb) => bb.id == bookid);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedBook.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.network(
                selectedBook.ImageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                color:  Color(0xFFDAD8A7),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.person),
                      SizedBox(width: 6,),
                      Text(selectedBook.AuthorName),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      SizedBox(width: 2,),
                      Text(selectedBook.Price),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "ABOUT",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFDAD8A7),
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      selectedBook.about,
                      style: TextStyle(
                        height: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
            isFavourite(bookid) ? Icons.favorite : Icons.favorite_border_outlined,
        ),
        onPressed: ()=>toggleFavourite(bookid),
      ),
    );
  }
}
