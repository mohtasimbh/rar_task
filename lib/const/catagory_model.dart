class Item {
  final String  image;
  final String  title;
  final String  description;

  Item({
    required this.title,
    required this.image,
    required this.description,
  });
}

class CatagoryModel {
  static final item = [
    Item(
      image: 'assets/images/1.png',
      title: 'General Medicine',
      description: '1200 Doctors',
    ),
    Item(
      image: 'assets/images/2.png',
      title: 'Internal Medicine',
      description: '800 Doctors',
    ),
    Item(
      image: 'assets/images/3.png',
      title: 'Gynecology',
      description: '1200 Doctors',
    ),
    Item(
      image: 'assets/images/4.png',
      title: 'Dermatology',
      description: '800 Doctors',
    ),
    Item(
      image: 'assets/images/5.png',
      title: 'Ophthalmology',
      description: '1200 Doctors',
    ),
    Item(
      image: 'assets/images/6.png',
      title: 'Orthopedics',
      description: '800 Doctors',
    ),
  ];
}
