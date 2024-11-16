import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Event for Login
class AuthLoginEvent extends AuthEvent {
  final String email;
  final String password;

  AuthLoginEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

// Event for Signup
class AuthSignupEvent extends AuthEvent {
  final String email;
  final String password;
  final String name;

  AuthSignupEvent({required this.email, required this.password, required this.name});

  @override
  List<Object?> get props => [email, password, name];
}

// Event for Logout
class AuthLogoutEvent extends AuthEvent {}
