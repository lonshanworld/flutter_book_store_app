import "package:flutter/material.dart";
import 'package:training3clone/Widgets/book_item.dart';
import 'package:training3clone/models/book.dart';
import "../Data.dart";

class BookShelfScreen extends StatefulWidget {
  static const routeName = "/BookShelfScreen";

  final List<Book> availablebook;

  BookShelfScreen(this.availablebook);

  @override
  State<BookShelfScreen> createState() => _BookShelfScreenState();
}

class _BookShelfScreenState extends State<BookShelfScreen> {

  late String BStitle;
  late Color BScolors;
  late Color BScolorforfont;
  late List<Book> displayedBOOKS;
  var _loadedInitData = false;


  @override
  void didChangeDependencies(){
    if(!_loadedInitData){
      final routePath = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;
      BStitle = routePath["title"] as String;
      final BSid = routePath["id"] as String;
      BScolors = routePath["colors"] as Color;
      BScolorforfont = routePath["colorforfont"] as Color;
      displayedBOOKS = widget.availablebook.where((element){
        return element.bookcategories.contains(BSid);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  // void _removebook(String Bkid){
  //   setState((){
  //     displayedBOOKS.removeWhere((element) => element.id == Bkid);
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: BScolorforfont,
        ),
        backgroundColor: BScolors,
        title: Text(
          BStitle,
          style: TextStyle(
            color: BScolorforfont,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: displayedBOOKS.length,
        itemBuilder: (ctx,index){
          return BookItem(
            id: displayedBOOKS[index].id,
            title: displayedBOOKS[index].title,
            ImageUrl: displayedBOOKS[index].ImageUrl,
            price: displayedBOOKS[index].Price,
            duration: displayedBOOKS[index].duration,
            ArthorName: displayedBOOKS[index].AuthorName,
          );
        },
      ),
    );
  }
}
