import 'package:equatable/equatable.dart';

class AuthRequestEntity extends Equatable {
  AuthRequestEntity({
    required this.email,
    required this.password,
    required this.userName,
  });

  final String userName;
  final String email;
  final String password;

  // AuthRequestEntity copyWith({
  //   bool? isGuest,
  //   String? userName,
  //   String? email,
  //   String? password,
  // }) {
  //   return AuthRequestEntity(
  //     email: email ?? this.email,
  //     password: password ?? this.password,
  //     isGuest: isGuest ?? this.isGuest,
  //     userName: userName ?? this.userName,
  //   );
  // }

  @override
  List<Object?> get props => [userName, email, password];
}
