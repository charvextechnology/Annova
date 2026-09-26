import 'package:annova/models/booking.dart';
import 'package:annova/models/hostel_listing.dart';
import 'package:annova/models/message.dart';
import 'package:annova/models/post.dart';
import 'package:annova/models/product.dart';
import 'package:annova/models/professional.dart';
import 'package:annova/models/user_profile.dart';

class MockData {
  static final UserProfile currentUser = UserProfile(
    id: 'u1',
    name: 'Anna',
    username: 'anna.campus',
    email: 'anna@charvex.tech',
    phone: '+2348123456789',
    bio: 'Creative student • campus life • content creator',
    profileImageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=400&q=80',
    followers: 1854,
    following: 680,
    likes: 9241,
    postsCount: 128,
    isVerified: true,
    role: 'Student/User',
  );

  static final UserProfile userAda = UserProfile(
    id: 'u2',
    name: 'Ada',
    username: 'ada.sells',
    email: 'ada@example.com',
    bio: 'Campus style and affordable finds',
    profileImageUrl:
        'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?auto=format&fit=crop&w=400&q=80',
    followers: 340,
    following: 210,
    likes: 2150,
    postsCount: 29,
    isVerified: true,
    role: 'Seller',
  );

  static final UserProfile userMariam = UserProfile(
    id: 'u3',
    name: 'Mariam',
    username: 'mariambeauty',
    email: 'mariam@example.com',
    bio: 'Hair, glam and bookings 💄',
    profileImageUrl:
        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=400&q=80',
    followers: 482,
    following: 146,
    likes: 3305,
    postsCount: 54,
    isVerified: true,
    role: 'Beauty Professional',
  );

  static final UserProfile userSamuel = UserProfile(
    id: 'u4',
    name: 'Samuel',
    username: 'sam.hostel',
    email: 'sam@example.com',
    bio: 'Room listings and hostel tips',
    profileImageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&q=80',
    followers: 180,
    following: 90,
    likes: 1007,
    postsCount: 18,
    isVerified: true,
    role: 'Hostel Agent',
  );

  static final UserProfile userJohn = UserProfile(
    id: 'u5',
    name: 'John',
    username: 'john.barber',
    email: 'john@example.com',
    bio: 'Professional barber • sharp cuts guaranteed',
    profileImageUrl:
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=400&q=80',
    followers: 256,
    following: 120,
    likes: 1543,
    postsCount: 32,
    isVerified: true,
    role: 'Beauty Professional',
  );

  static final List<UserProfile> followers = [
    currentUser,
    userAda,
    userMariam,
    userSamuel,
    userJohn,
  ];

  static final List<UserProfile> following = [
    userAda,
    userMariam,
    userSamuel,
    userJohn,
    currentUser,
  ];

  static final List<Post> posts = [
    Post(
      id: 'p1',
      user: currentUser,
      caption:
          'Late-night study session with the best playlist in the library. Campus feels alive tonight! ✨',
      imageUrls: [
        'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=1000&q=80',
      ],
      location: 'University Library, Ado-Ekiti',
      contactOptions: ['WhatsApp', 'Telegram', 'Gmail'],
      likes: 284,
      comments: 22,
      shares: 14,
      isLiked: true,
      isSaved: false,
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    ),
    Post(
      id: 'p2',
      user: userAda,
      caption:
          'Looking for campus style lovers! Fresh drops and affordable prices this week. 🛍️',
      imageUrls: [
        'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=1000&q=80',
      ],
      location: 'Adebayo Market',
      contactOptions: ['WhatsApp', 'TikTok', 'Snapchat'],
      likes: 432,
      comments: 36,
      shares: 19,
      isLiked: false,
      isSaved: true,
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Post(
      id: 'p3',
      user: userMariam,
      caption: 'Glam session done! Who wants to book their next look? 💅✨',
      imageUrls: [
        'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?auto=format&fit=crop&w=1000&q=80',
      ],
      location: 'Mariam Beauty Studio, Campus',
      contactOptions: ['WhatsApp', 'Gmail'],
      likes: 156,
      comments: 12,
      shares: 8,
      isLiked: false,
      isSaved: false,
      createdAt: DateTime.now().subtract(const Duration(hours: 12)),
    ),
  ];

  static final List<Product> products = [
    Product(
      id: 'prod1',
      name: 'Classic Street Hoodie',
      description:
          'Cozy oversized hoodie with premium cotton finish. Great for campus mornings and evening hangouts. Available in multiple colors.',
      price: 18000,
      currency: 'NGN',
      location: 'Adebayo, Ado-Ekiti',
      imageUrls: [
        'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1556821552-5f63b2c28e9b?auto=format&fit=crop&w=1000&q=80',
      ],
      sellerName: 'Ada',
      sellerId: 'u2',
      sellerImageUrl:
          'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      category: 'Clothing',
    ),
    Product(
      id: 'prod2',
      name: 'Wireless Earbuds Pro',
      description:
          'High-quality noise-isolating earbuds with charging case and 24-hour battery life. Perfect for studying.',
      price: 42000,
      currency: 'NGN',
      location: 'Campus, Ado-Ekiti',
      imageUrls: [
        'https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=1000&q=80',
      ],
      sellerName: 'Sam',
      sellerId: 'u4',
      sellerImageUrl:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      category: 'Electronics',
    ),
    Product(
      id: 'prod3',
      name: 'Designer Sneakers',
      description: 'Comfortable and stylish sneakers. Suitable for campus wear and outdoor activities.',
      price: 28000,
      currency: 'NGN',
      location: 'Iworoko, Ado-Ekiti',
      imageUrls: [
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=1000&q=80',
      ],
      sellerName: 'Ada',
      sellerId: 'u2',
      sellerImageUrl:
          'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      category: 'Shoes',
    ),
    Product(
      id: 'prod4',
      name: 'Gold Chain Necklace',
      description: 'Elegant gold-plated necklace. Perfect for accessorizing any outfit.',
      price: 12000,
      currency: 'NGN',
      location: 'Adebayo Market',
      imageUrls: [
        'https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?auto=format&fit=crop&w=1000&q=80',
      ],
      sellerName: 'Ada',
      sellerId: 'u2',
      sellerImageUrl:
          'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      category: 'Jewelry',
    ),
  ];

  static final List<HostelListing> hostels = [
    HostelListing(
      id: 'h1',
      title: '2-Bedroom Hostel with Wi-Fi',
      location: 'Adebayo',
      price: 280000,
      occupants: 2,
      facilities: ['Wi-Fi', 'Generator', 'Water', 'Security'],
      posterName: 'Samuel',
      posterId: 'u4',
      posterImageUrl:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      imageUrls: [
        'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=1000&q=80',
      ],
      description:
          'Spacious and clean hostel with power backup, private parking and quiet study room. Inclusive of water and electricity.',
      type: 'hostel',
    ),
    HostelListing(
      id: 'h2',
      title: 'Single Room Near Campus',
      location: 'Campus',
      price: 650000,
      occupants: 1,
      facilities: ['Air Condition', 'Shared Kitchen', 'Laundry'],
      posterName: 'Mariam',
      posterId: 'u3',
      posterImageUrl:
          'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      imageUrls: [
        'https://images.unsplash.com/photo-1494526585095-c41746248156?auto=format&fit=crop&w=1000&q=80',
      ],
      description:
          'Well-secured room close to lecture halls and eateries. Ideal for serious students. Inclusive of Wi-Fi.',
      type: 'hostel',
    ),
    HostelListing(
      id: 'h3',
      title: 'ROOMMATE NEEDED - 3-Bedroom Flat',
      location: 'Iworoko',
      price: 380000,
      occupants: 1,
      facilities: ['Generator', 'Water', 'Kitchen'],
      posterName: 'Chioma',
      posterId: 'u6',
      posterImageUrl:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=400&q=80',
      isVerified: false,
      imageUrls: [
        'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=1000&q=80',
      ],
      description:
          'Looking for a responsible female roommate. Quiet and safe environment. Rent is per person.',
      type: 'roommate',
    ),
  ];

  static final List<Professional> professionals = [
    Professional(
      id: 'prof1',
      name: 'Mariam Beauty Studio',
      profession: 'Makeup Artist',
      location: 'Ado-Ekiti',
      imageUrl:
          'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      services: ['Bridal Makeup', 'Soft Glam', 'Party Makeup', 'Eyebrow Design'],
      prices: [25000, 18000, 30000, 8000],
      rating: 4.9,
      reviews: 218,
      portfolioImages: [
        'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1553729784-e91953dec042?auto=format&fit=crop&w=1000&q=80',
      ],
      availableDates: ['Tue 18 Jun', 'Wed 19 Jun', 'Thu 20 Jun', 'Fri 21 Jun'],
      availableTimes: ['9:00 AM', '12:00 PM', '3:00 PM', '6:00 PM'],
      bio: 'Professional makeup artist with 5+ years experience. Specializing in bridal and event makeup.',
    ),
    Professional(
      id: 'prof2',
      name: 'Kola Cuts Barbershop',
      profession: 'Barber',
      location: 'Campus',
      imageUrl:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      services: ['Haircut', 'Skin Fade', 'Beard Trim', 'Full Grooming'],
      prices: [4000, 6500, 5000, 15000],
      rating: 4.7,
      reviews: 156,
      portfolioImages: [
        'https://images.unsplash.com/photo-1517832606299-7ae9b720a186?auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1599577818694-2b5afeae2ad6?auto=format&fit=crop&w=1000&q=80',
      ],
      availableDates: ['Mon 17 Jun', 'Tue 18 Jun', 'Wed 19 Jun', 'Thu 20 Jun', 'Fri 21 Jun'],
      availableTimes: ['10:00 AM', '1:00 PM', '4:30 PM', '7:00 PM'],
      bio: 'Expert barber with modern techniques. Walk-ins welcome!',
    ),
    Professional(
      id: 'prof3',
      name: 'Hair Haven Studio',
      profession: 'Hair Stylist',
      location: 'Adebayo',
      imageUrl:
          'https://images.unsplash.com/photo-1494783367193-149034c05e41?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      services: ['Braiding', 'Relaxer', 'Weaving', 'Hair Treatment'],
      prices: [12000, 8000, 15000, 10000],
      rating: 4.8,
      reviews: 302,
      portfolioImages: [
        'https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?auto=format&fit=crop&w=1000&q=80',
      ],
      availableDates: ['Mon 17 Jun', 'Tue 18 Jun', 'Thu 20 Jun'],
      availableTimes: ['11:00 AM', '2:00 PM', '5:00 PM'],
      bio: 'Expert in all hair types. We care for your hair!',
    ),
    Professional(
      id: 'prof4',
      name: 'ProPhoto Studio',
      profession: 'Photographer',
      location: 'Campus',
      imageUrl:
          'https://images.unsplash.com/photo-1516035069371-29ad0afe3f3d?auto=format&fit=crop&w=400&q=80',
      isVerified: true,
      services: ['Portrait Session', 'Event Coverage', 'Product Shoot', 'Graduation Shoot'],
      prices: [35000, 120000, 45000, 50000],
      rating: 4.9,
      reviews: 189,
      portfolioImages: [
        'https://images.unsplash.com/photo-1502764613149-7f3bad3dcf20?auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1511379938547-c1f69b13d835?auto=format&fit=crop&w=1000&q=80',
      ],
      availableDates: ['Wed 19 Jun', 'Fri 21 Jun', 'Sat 22 Jun'],
      availableTimes: ['9:00 AM', '2:00 PM'],
      bio: 'Professional photographer capturing your best moments.',
    ),
  ];

  static final List<MessageThread> conversations = [
    MessageThread(
      user: userAda,
      messageCount: 7,
      flaggedForSpam: false,
      messages: [
        Message(
          id: 'm1',
          senderId: 'u2',
          text: 'Hey, is the hoodie still available?',
          timestamp: DateTime.now().subtract(const Duration(hours: 1)),
        ),
        Message(
          id: 'm2',
          senderId: 'u1',
          text: 'Yes, it is! I can also send more details.',
          timestamp: DateTime.now().subtract(const Duration(minutes: 55)),
        ),
        Message(
          id: 'm3',
          senderId: 'u2',
          text: 'Great! What are the colors available?',
          timestamp: DateTime.now().subtract(const Duration(minutes: 50)),
        ),
      ],
    ),
    MessageThread(
      user: userSamuel,
      messageCount: 11,
      flaggedForSpam: true,
      messages: [
        Message(
          id: 'm4',
          senderId: 'u4',
          text: 'I can show you room options nearby.',
          timestamp: DateTime.now().subtract(const Duration(hours: 5)),
        ),
      ],
    ),
    MessageThread(
      user: userMariam,
      messageCount: 3,
      flaggedForSpam: false,
      messages: [
        Message(
          id: 'm5',
          senderId: 'u3',
          text: 'Hi! I have an available slot tomorrow at 3 PM for makeup.',
          timestamp: DateTime.now().subtract(const Duration(hours: 2)),
        ),
      ],
    ),
  ];

  static final List<Booking> bookings = [
    Booking(
      id: 'b1',
      professionalId: 'prof1',
      professionalName: 'Mariam Beauty Studio',
      serviceSelected: 'Bridal Makeup',
      price: 25000,
      selectedDate: 'Fri 21 Jun',
      selectedTime: '9:00 AM',
      location: 'Studio Address',
      status: 'accepted',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
  ];
}
