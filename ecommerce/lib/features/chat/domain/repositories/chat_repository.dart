import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/chat.dart';
import '../entities/message.dart';
import '../entities/user.dart';

abstract class ChatRepository {
  Future<Either<Failure, List<Message>>> getChatMessages(String id);
  Future<Either<Failure, List<Chat>>> getUserChats();
  Future<Either<Failure, Chat>> getOrCreateChat(User receiver);
  Future<Either<Failure, Unit>> deleteChat(String id);
  Future<Either<Failure, Message>> sendMessage(
      String chatId, String message, String type);
}
