class Service {
  final int id;
  final String title, description, location, provider;
  final List<String> images;
  final double rating, price;
  final bool isFavourite;

  Service({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.provider,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    required this.price,
  });
}

class ServiceDetailsArguments {
  final Service service;

  ServiceDetailsArguments({required this.service});
}

List<Service> services = [
  Service(
    id: 1,
    images: [
      "assets/image/service1.jpg",
      "assets/image/service2.jpg",
      "assets/image/service3.jpg",
    ],
    title: "Hair Styling",
    price: 2000.00,
    description: "Professional hair styling and design services.",
    rating: 4.5,
    isFavourite: true,
    location: "Downtown Salon",
    provider: "Stylist Jane",
  ),
  Service(
    id: 2,
    images: [
      "assets/image/spa1.jpg",
      "assets/image/spa2.jpg",
      "assets/image/spa3.jpg",
    ],
    title: "Spa Treatment",
    price: 3500.00,
    description: "Relaxing spa treatments to rejuvenate your body and mind.",
    rating: 4.7,
    location: "Ocean Spa",
    provider: "Therapist John",
  ),
  // we'll add more services
];

