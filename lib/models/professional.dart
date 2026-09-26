class Professional {
  final String id;
  final String name;
  final String profession;
  final String location;
  final String imageUrl;
  final bool isVerified;
  final List<String> services;
  final List<int> prices;
  final double rating;
  final int reviews;
  final List<String> portfolioImages;
  final List<String> availableDates;
  final List<String> availableTimes;
  final String bio;

  const Professional({
    required this.id,
    required this.name,
    required this.profession,
    required this.location,
    required this.imageUrl,
    required this.isVerified,
    required this.services,
    required this.prices,
    required this.rating,
    required this.reviews,
    required this.portfolioImages,
    required this.availableDates,
    required this.availableTimes,
    required this.bio,
  });
}
