import 'package:annova/models/user_profile.dart';

class Message {
  final String id;
  final String senderId;
  final String text;
  final DateTime timestamp;

  const Message({
    required this.id,
    required this.senderId,
    required this.text,
    required this.timestamp,
  });
}

class MessageThread {
  final UserProfile user;
  final List<Message> messages;
  final int messageCount;
  final bool flaggedForSpam;

  const MessageThread({
    required this.user,
    required this.messages,
    required this.messageCount,
    required this.flaggedForSpam,
  });
}
