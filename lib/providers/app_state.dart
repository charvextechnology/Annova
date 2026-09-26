import 'package:flutter/material.dart';
import 'package:annova/models/post.dart';
import 'package:annova/models/user_profile.dart';
import 'package:annova/models/product.dart';
import 'package:annova/models/hostel_listing.dart';
import 'package:annova/models/professional.dart';
import 'package:annova/models/message.dart';
import 'package:annova/models/booking.dart';
import 'package:annova/data/mock_data.dart';

class AppState extends ChangeNotifier {
  final UserProfile currentUser = MockData.currentUser;
  int _currentTabIndex = 0;
  UserProfile? _viewingProfile;
  Product? _viewingProduct;
  Professional? _viewingProfessional;

  final List<Post> posts = List.from(MockData.posts);
  final List<Product> products = List.from(MockData.products);
  final List<HostelListing> hostels = List.from(MockData.hostels);
  final List<Professional> professionals = List.from(MockData.professionals);
  final List<MessageThread> conversations = List.from(MockData.conversations);
  final List<Booking> bookings = List.from(MockData.bookings);

  int get currentTabIndex => _currentTabIndex;
  UserProfile? get viewingProfile => _viewingProfile;
  Product? get viewingProduct => _viewingProduct;
  Professional? get viewingProfessional => _viewingProfessional;

  void updateTab(int index) {
    _currentTabIndex = index;
    notifyListeners();
  }

  void addPost(Post post) {
    posts.insert(0, post);
    notifyListeners();
  }

  void addMessage(MessageThread thread) {
    final index = conversations.indexWhere((element) => element.user.id == thread.user.id);
    if (index == -1) {
      conversations.insert(0, thread);
    } else {
      conversations[index] = thread;
    }
    notifyListeners();
  }

  void setViewingProfile(UserProfile? profile) {
    _viewingProfile = profile;
    notifyListeners();
  }

  void setViewingProduct(Product? product) {
    _viewingProduct = product;
    notifyListeners();
  }

  void setViewingProfessional(Professional? professional) {
    _viewingProfessional = professional;
    notifyListeners();
  }

  void likePost(String postId) {
    final postIndex = posts.indexWhere((p) => p.id == postId);
    if (postIndex != -1) {
      final post = posts[postIndex];
      if (post.isLiked) {
        post.likes -= 1;
        post.isLiked = false;
      } else {
        post.likes += 1;
        post.isLiked = true;
      }
      notifyListeners();
    }
  }

  void savePost(String postId) {
    final postIndex = posts.indexWhere((p) => p.id == postId);
    if (postIndex != -1) {
      final post = posts[postIndex];
      post.isSaved = !post.isSaved;
      notifyListeners();
    }
  }

  void createBooking(Booking booking) {
    bookings.add(booking);
    notifyListeners();
  }
}
