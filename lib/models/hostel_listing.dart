class HostelListing {
  final String id;
  final String title;
  final String location;
  final double price;
  final int occupants;
  final List<String> facilities;
  final String posterName;
  final String posterId;
  final String posterImageUrl;
  final bool isVerified;
  final List<String> imageUrls;
  final String description;
  final String type; // 'hostel' or 'roommate'

  const HostelListing({
    required this.id,
    required this.title,
    required this.location,
    required this.price,
    required this.occupants,
    required this.facilities,
    required this.posterName,
    required this.posterId,
    required this.posterImageUrl,
    required this.isVerified,
    required this.imageUrls,
    required this.description,
    required this.type,
  });
}
