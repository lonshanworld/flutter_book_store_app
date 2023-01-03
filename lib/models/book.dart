enum DURATION{
  Short,
  Medium,
  Long,
}

class Book{
  final String id;
  final List<String> bookcategories;
  final String title;
  final String AuthorName;
  final String ImageUrl;
  final String Price;
  final String about;
  final DURATION duration;
  final bool forAdult;
  final bool Horror;

  const Book({
    required this.id,
    required this.bookcategories,
    required this.title,
    required this.duration,
    required this.about,
    required this.AuthorName,
    required this.forAdult,
    required this.Horror,
    required this.ImageUrl,
    required this.Price,
});
}