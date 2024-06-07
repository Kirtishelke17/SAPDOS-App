class Doctor {
  final String name;
  final String specialization;
  final String image;
  final double rating;

  Doctor(
      {required this.name,
      required this.specialization,
      required this.image,
      required this.rating});

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      name: json['name'],
      specialization: json['specialization'],
      image: json['image'],
      rating: json['rating'],
    );
  }
}
