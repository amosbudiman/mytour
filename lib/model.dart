class Place {
  final String name;
  final String image;
  final String description;
  final String location;
  bool isLiked;

  Place({
    required this.name,
    required this.image,
    required this.description,
    required this.location,
    this.isLiked = false, // Default value is false
  });

  // Method untuk membuat instance dari Map
  factory Place.fromMap(Map<String, dynamic> map) {
    return Place(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
      location: map['location'] ?? '',
      isLiked: map['isLiked'] ?? false,
    );
  }

  // Method untuk mengubah instance menjadi Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'location': location,
      'isLiked': isLiked,
    };
  }
}
