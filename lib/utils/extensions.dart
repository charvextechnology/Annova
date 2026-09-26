import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toFormattedString() {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inSeconds < 60) {
      return 'now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return '${weeks}w ago';
    } else {
      return DateFormat('MMM d, yyyy').format(this);
    }
  }

  String toDateOnly() {
    return DateFormat('MMM d, yyyy').format(this);
  }

  String toTimeOnly() {
    return DateFormat('h:mm a').format(this);
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  bool isValidEmail() {
    return RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(this);
  }
}

extension NumExtension on num {
  String toCurrency() {
    return '₦${NumberFormat('#,##0').format(this)}';
  }
}
