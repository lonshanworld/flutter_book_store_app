import 'package:training3clone/models/book.dart';

import "./models/category.dart";
import "package:flutter/material.dart";

const BOOK_Categories = [
  Category(id: "c1", title: "Myanmar novel books", colors: Colors.green,),
  Category(id: "c2", title: "language books", colors: Colors.yellow,),
  Category(id: "c3", title: "Science books", colors: Colors.purple,),
  Category(id: "c4", title: "History books", colors: Colors.orangeAccent,),
  Category(id: "c5", title: "Geography books", colors: Colors.brown,),
  Category(id: "c6", title: "Animal books", colors: Colors.red,),
  Category(id: "c7", title: "Plants books", colors: Colors.lightGreenAccent,),
  Category(id: "c8", title: "Engineer books", colors: Colors.blueGrey,),
  Category(id: "c9", title: "Medical books", colors: Colors.cyanAccent,),
  Category(id: "c10", title: "Cooking books", colors: Colors.lime,),
  Category(id: "c11", title: "Aquatic books", colors: Colors.lightBlueAccent,),
  Category(id: "c12", title: "Story books", colors: Colors.white, colorforfont: Colors.black,),
  Category(id: "c13", title: "Real-Life books", colors: Colors.amber,),
  Category(id: "c14", title: "IT books", colors: Colors.black,),
  Category(id: "c15", title: "Designer books", colors: Colors.pink,),
];

const BOOK_DATA = [
  Book(
    id: "b1",
    bookcategories: ["c1"],
    title: "Myanmar book 1 (1)sggdfsgdfgdgdgdfgfsgdfgdfgdfghdfg",
    duration: DURATION.Short,
    about: "About Myanmar.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    AuthorName: "Mg Mg",
    forAdult: false,
    Horror: false,
    ImageUrl: "https://www.mmbookdownload.com/img/cover/COB9968.jpg",
    Price: "10000 Ks",
  ),
  Book(
    id: "b2",
    bookcategories: ["c1","c4"],
    title: "Myanmar book 2 (2)gdfgfdgertggfvbdfg",
    duration: DURATION.Long,
    about: "About Kings of Myanmar.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    AuthorName: "Kyaw Kyaw",
    forAdult: false,
    Horror: false,
    ImageUrl: "https://www.mmbookdownload.com/img/cover/COB5679_1.jpg",
    Price: "Free",
  ),
  Book(
    id: "b3",
    bookcategories: ["c1","c3","c6"],
    title: "Myanmar book 3 (3)fgdfgertgergdfger",
    duration: DURATION.Medium,
    about: "About Myanmar'aquatic animals.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    AuthorName: "Htun Htun",
    forAdult: false,
    Horror: false,
    ImageUrl: "https://media.springernature.com/lw685/springer-static/image/art%3A10.1007%2Fs10228-021-00806-5/MediaObjects/10228_2021_806_Fig1_HTML.jpg",
    Price: "Free",
  ),
  Book(
    id: "b4",
    bookcategories: ["c12"],
    title: "Story book 1",
    duration: DURATION.Long,
    about: "Horror Stories.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    AuthorName: "Mya Mya",
    forAdult: true,
    Horror: true,
    ImageUrl: "https://s2982.pcdn.co/wp-content/uploads/2021/07/Nothing-But-Blackened-Teeth.jpeg.optimal.jpeg",
    Price: "18000 Ks",
  ),
];