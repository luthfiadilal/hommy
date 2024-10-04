class Naerhouses {
  String name;
  String location;
  String price;
  String image;
  String bathroom;
  String bedroom;
  bool garage;

  Naerhouses({
    required this.name,
    required this.location,
    required this.price,
    required this.image,
    required this.bathroom,
    required this.bedroom,
    required this.garage,
  });

  static List<Naerhouses> nearhouseList = [
    Naerhouses(
        name: "Timber Haven",
        location: "San Francisco",
        price: "3000",
        image: "images/home10.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Naerhouses(
        name: "The Palm Grove",
        location: "California",
        price: "5000",
        image: "images/home9.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Naerhouses(
        name: "Hillside Haven",
        location: "New York",
        price: "4000",
        image: "images/home8.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: false),
    Naerhouses(
        name: "Seaside Serenity",
        location: "New Zealand",
        price: "3000",
        image: "images/home7.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Naerhouses(
        name: "Countryside Charm",
        location: "London",
        price: "6000",
        image: "images/home6.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Naerhouses(
        name: "Mountain View",
        location: "California",
        price: "7000",
        image: "images/home5.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Naerhouses(
        name: "Countryside Charm",
        location: "London",
        price: "6000",
        image: "images/home4.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Naerhouses(
        name: "Seaside Serenity",
        location: "New Zealand",
        price: "3000",
        image: "images/home3.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
    Naerhouses(
        name: "Hillside Haven",
        location: "New York",
        price: "4000",
        image: "images/home2.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: false),
    Naerhouses(
        name: "Timber Haven",
        location: "San Francisco",
        price: "3000",
        image: "images/home1.jpeg",
        bathroom: "2",
        bedroom: "3",
        garage: true),
  ];
}
