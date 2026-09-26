import 'package:annova/models/user_profile.dart';

class Post {
  final String id;
  final UserProfile user;
  final String caption;
  final List<String> imageUrls;
  final String location;
  final List<String> contactOptions;
  late int likes;
  final int comments;
  late int shares;
  late bool isLiked;
  late bool isSaved;
  final DateTime createdAt;

  Post({
    required this.id,
    required this.user,
    required this.caption,
    required this.imageUrls,
    required this.location,
    required this.contactOptions,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.isLiked,
    required this.isSaved,
    required this.createdAt,
  });
}

class CommentItem {
  final String id;
  final UserProfile user;
  final String text;
  final DateTime createdAt;

  const CommentItem({
    required this.id,
    required this.user,
    required this.text,
    required this.createdAt,
  });
}
