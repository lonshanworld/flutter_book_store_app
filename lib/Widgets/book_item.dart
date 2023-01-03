import "package:flutter/material.dart";
import 'package:training3clone/models/book.dart';
import 'package:training3clone/screen/book_indetail_screen.dart';

class BookItem extends StatelessWidget {

  final String id;
  final String title;
  final String ImageUrl;
  final String price;
  final String ArthorName;
  final DURATION duration;

  BookItem({ required this.id,required this.title, required this.ImageUrl, required this.price, required this.duration, required this.ArthorName});

  String get durationText{
    switch (duration){
      case DURATION.Short:
        return "Short";

      case DURATION.Medium:
        return "Medium";

      case DURATION.Long:
        return "Long";

      default:
        return "Error";
    }
  }

  void Indetailbook(BuildContext hh){
    Navigator.of(hh).pushNamed(
      BookIndetailScreen.routeName,
      arguments: id,
    ).then((value){
      if(value !=null){
        // removeItem(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Indetailbook(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    ImageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  left: 10,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.person),
                      SizedBox(width: 6,),
                      Text(ArthorName),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text(durationText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      SizedBox(width: 2,),
                      Text(price),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
