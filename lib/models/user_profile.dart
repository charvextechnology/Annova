class UserProfile {
  final String id;
  final String name;
  final String username;
  final String email;
  final String? phone;
  final String bio;
  final String profileImageUrl;
  final int followers;
  final int following;
  final int likes;
  final int postsCount;
  final bool isVerified;
  final String role;

  const UserProfile({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.phone,
    required this.bio,
    required this.profileImageUrl,
    required this.followers,
    required this.following,
    required this.likes,
    required this.postsCount,
    required this.isVerified,
    required this.role,
  });
}
