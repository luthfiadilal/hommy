class Houses {
  String name;
  String location;
  String price;
  String image;
  String bathroom;
  String bedroom;
  bool garage;

  Houses({
    required this.name,
    required this.location,
    required this.price,
    required this.image,
    required this.bathroom,
    required this.bedroom,
    required this.garage,
  });

  static List<Houses> houseList = [
    Houses(
        name: "Casa Grande",
        location: "San Francisco",
        price: "3000",
        image: "images/home1.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Houses(
        name: "Villa",
        location: "California",
        price: "5000",
        image: "images/home2.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Houses(
        name: "Mayasari",
        location: "New York",
        price: "4000",
        image: "images/home4.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: false),
    Houses(
        name: "Casa Small",
        location: "New Zealand",
        price: "3000",
        image: "images/home5.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Houses(
        name: "Royal Residence",
        location: "London",
        price: "6000",
        image: "images/home6.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
  ];
}
