class ServiceModel {
  final String image;
  final String title;
  ServiceModel({
    required this.title,
    required this.image,
  });
}

class ServiceList {
  static final service = [
    ServiceModel(title: 'Doctor', image: 'assets/icons/1.png'),
    ServiceModel(title: 'Hospital', image: 'assets/icons/2.png'),
    ServiceModel(title: 'Medicine', image: 'assets/icons/3.png'),
    ServiceModel(title: 'Doctor', image: 'assets/icons/1.png'),
    ServiceModel(title: 'Hospital', image: 'assets/icons/2.png'),
    ServiceModel(title: 'Medicine', image: 'assets/icons/3.png'),
    ServiceModel(title: 'Doctor', image: 'assets/icons/1.png'),
    ServiceModel(title: 'Hospital', image: 'assets/icons/2.png'),
    ServiceModel(title: 'Medicine', image: 'assets/icons/3.png'),
  ];
}
