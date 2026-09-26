# Annova

**© CHARVEX TECHNOLOGIES**

Annova is a modern, feature-rich campus community mobile application designed for students, professionals, and service providers. It combines social networking, marketplace discovery, accommodation search, and beauty/professional bookings into a seamless experience for Android, iOS, and Web.

## Overview

Annova greets users with "Anna, what's happening on campus?" and provides a unified platform for campus life including:

- **Social Feed** – Share posts with images, locations, and contact information
- **Marketplace** – Discover and sell items like clothing, electronics, accessories
- **Accommodation** – Find hostels and roommate listings with budget filters
- **Beauty & Bookings** – Book professional services (makeup, hair, photography, etc.)
- **Direct Messaging** – Communicate with sellers, professionals, and friends with anti-spam controls
- **User Profiles** – Build your campus reputation with followers, posts, and ratings

## Main Features

### 1. Authentication
- Email/password signup and login
- Google Sign-In integration (Firebase-ready)
- Phone number with OTP verification (Firebase-ready)
- Username creation
- Profile picture upload
- Editable profile information

### 2. Home Social Feed
- Facebook/TikTok-inspired modern layout
- Post creation with caption, multiple images, location, and contact options
- Like, comment, save, and reshare posts
- View poster profile and send direct messages
- Real-time mock data with trending posts

### 3. Create Post
- Rich text caption input
- Multiple image upload support
- Location tagging
- Compulsory contact options selection:
  - WhatsApp
  - TikTok
  - Snapchat
  - Telegram
  - Gmail
  - Custom options

### 4. Marketplace
- Search across products
- Browse by category:
  - Clothing
  - Shoes
  - Jewelry
  - Deodorants/Cosmetics
  - Hair Accessories
  - Sandals/Slippers
  - Electronics
  - Other
- Product details with seller verification status
- Safety tips and seller information
- Chat seller functionality
- Future-ready "Buy Now" button (Firebase payment integration)

### 5. Hostel & Roommate
- Hostel search by location (Adebayo, Iworoko, Campus, Ado-Ekiti)
- Budget filtering: ₦200,000 – ₦1,000,000+
- Listing details: images, facilities, number of occupants, verification status
- Separate roommate request section
- Comment and contact poster functionality

### 6. Beauty & Bookings
- Professional categories:
  - Hair Stylist
  - Barber
  - Makeup Artist
  - Nail Technician
  - Lash Technician
  - Photographer
  - Fashion Stylist
- Professional profile with portfolio, ratings, and availability
- Booking flow: Service → Date → Time → Confirm
- Booking statuses: Pending, Accepted, Declined, Cancelled, Completed

### 7. Direct Messaging
- Conversation history
- Start chats from profiles, listings, and marketplace items
- Anti-spam architecture with progressive restrictions
- User blocking and reporting capabilities
- Flag conversations after elevated message activity

### 8. User Profile
- Profile picture, name, username, bio
- Post, follower, following, and likes counts
- Follow/unfollow functionality
- View followers and following lists
- Edit profile information

### 9. Navigation
Bottom tab navigation:
- **Home** – Feed + Quick access to Marketplace, Hostels, Beauty
- **Explore** – Discovery features
- **Create** – New post creation
- **Messages** – Direct messaging center
- **Profile** – User profile and settings

### 10. Design
- Modern, responsive mobile UI
- Inspired by TikTok/Facebook but custom-built for Annova
- Smooth animations and transitions
- Dark mode support (ThemeData prepared)
- Loading, empty, and error states
- Form validation
- Proper spacing and typography using Poppins font

## Project Structure

```
lib/
├── main.dart                           # App entry point
├── models/                             # Data models
│   ├── user_profile.dart
│   ├── post.dart
│   ├── product.dart
│   ├── hostel_listing.dart
│   ├── professional.dart
│   └── message.dart
├── screens/                            # UI screens
│   ├── splash_screen.dart
│   ├── auth/
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   └── otp_verification_screen.dart
│   ├── home/
│   │   ├── home_screen.dart
│   │   ├── feed_screen.dart
│   │   └── explore_screen.dart
│   ├── create_post/
│   │   └── create_post_screen.dart
│   ├── marketplace/
│   │   ├── marketplace_screen.dart
│   │   └── product_detail_screen.dart
│   ├── accommodation/
│   │   ├── hostel_screen.dart
│   │   ├── roommate_screen.dart
│   │   └── hostel_detail_screen.dart
│   ├── beauty/
│   │   ├── beauty_screen.dart
│   │   ├── professional_profile_screen.dart
│   │   └── booking_screen.dart
│   ├── messages/
│   │   ├── messages_screen.dart
│   │   └── chat_screen.dart
│   ├── profile/
│   │   ├── profile_screen.dart
│   │   ├── followers_screen.dart
│   │   ├── following_screen.dart
│   │   ├── edit_profile_screen.dart
│   │   └── settings_screen.dart
│   └── navigation/
│       └── main_navigation.dart
├── widgets/                            # Reusable widgets
│   ├── post_card.dart
│   ├── product_card.dart
│   ├── hostel_card.dart
│   ├── professional_card.dart
│   ├── message_card.dart
│   ├── custom_app_bar.dart
│   ├── custom_button.dart
│   ├── custom_text_field.dart
│   ├── verification_badge.dart
│   └── bottom_nav_bar.dart
├── providers/                          # State management (Provider)
│   ├── app_state.dart
│   ├── auth_provider.dart
│   └── marketplace_provider.dart
├── services/                           # Business logic services
│   ├── auth_service.dart
│   ├── post_service.dart
│   ├── marketplace_service.dart
│   ├── messaging_service.dart
│   ├── user_service.dart
│   └── booking_service.dart
├── authentication/                     # Auth flows
│   ├── firebase_auth.dart
│   └── google_auth.dart
├── database/                           # Database layer
│   ├── firestore_service.dart
│   └── local_storage.dart
├── data/                               # Mock data
│   └── mock_data.dart
└── utils/                              # Utilities
    ├── app_theme.dart
    ├── constants.dart
    ├── validators.dart
    └── extensions.dart
```

## Firebase Integration (Ready)

This project is architected for Firebase:

- **Firebase Authentication** – Email, Google, Phone OTP
- **Cloud Firestore** – Posts, products, users, bookings, messages
- **Firebase Storage** – Profile pictures, post images, product images
- **Cloud Messaging** – Push notifications for messages and bookings

Firebase will be connected through the services layer without requiring app shell changes.

## Getting Started

### Prerequisites

- Flutter 3.3.0 or newer
- Dart 3.3.0 or newer
- Xcode (for iOS)
- Android Studio (for Android)
- VS Code or Android Studio IDE

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/charvextechnology/Annova.git
   cd Annova
   ```

2. **Get dependencies**
   ```bash
   flutter pub get
   ```

3. **Run on mobile or web**
   ```bash
   flutter run
   ```

### Run on Specific Platform

**Android:**
```bash
flutter run -d android
```

**iOS:**
```bash
flutter run -d ios
```

**Web:**
```bash
flutter config --enable-web
flutter run -d chrome
```

### Build for Release

**Android APK:**
```bash
flutter build apk --release
```

**Android App Bundle (Google Play):**
```bash
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web
```

## Code Quality

**Run analysis:**
```bash
flutter analyze
```

**Format code:**
```bash
dart format lib/
```

**Run tests:**
```bash
flutter test
```

## Architecture & State Management

- **Provider** for state management and dependency injection
- **Clean Architecture** principles with separation of concerns
- **Service layer** for business logic (auth, posts, marketplace, messaging)
- **Models** for type-safe data representation
- **Screens & Widgets** for UI components
- **Mock data** for prototype preview

## Firebase Setup (Future)

To connect Firebase:

1. Create a Firebase project at https://console.firebase.google.com
2. Add Android and iOS apps to the project
3. Download and place configuration files:
   - `google-services.json` → `android/app/`
   - `GoogleService-Info.plist` → `ios/Runner/`
4. Uncomment Firebase dependencies in `pubspec.yaml`
5. Implement Firebase services in `lib/services/`
6. Connect authentication flows in `lib/authentication/`
7. Link Firestore models in `lib/database/`

## Design Inspiration

Annova's UI draws inspiration from:
- TikTok's feed smoothness and engagement
- Facebook's social features and marketplace
- Instagram's profile and discovery

But all designs are custom-built for campus community needs.

## Features Roadmap

- ✅ Prototype screens with mock data
- ✅ Navigation structure
- ✅ Core UI components
- ⏳ Firebase Authentication integration
- ⏳ Cloud Firestore backend
- ⏳ Payment gateway (Flutterwave, Stripe)
- ⏳ Push notifications
- ⏳ Image compression and upload
- ⏳ Real-time messaging
- ⏳ Seller verification system
- ⏳ Admin dashboard

## User Roles

- **Student/User** – Create posts, buy/sell, message, book services
- **Seller** – List and sell marketplace items
- **Beauty Professional** – Offer bookable services with portfolio
- **Hostel Agent** – List and manage accommodation
- **Admin/Owner (Anna)** – Moderation, verification, reports, spam management

## Copyright

© CHARVEX TECHNOLOGIES

All rights reserved. Annova is a proprietary campus community platform.

## Support & Contact

For questions or issues, please contact the development team through the app or visit our GitHub repository.

---

**Happy coding! Build campus connections with Annova.** ✨
