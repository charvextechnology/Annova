class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String currency;
  final String location;
  final List<String> imageUrls;
  final String sellerName;
  final String sellerId;
  final String sellerImageUrl;
  final bool isVerified;
  final String category;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.location,
    required this.imageUrls,
    required this.sellerName,
    required this.sellerId,
    required this.sellerImageUrl,
    required this.isVerified,
    required this.category,
  });
}
