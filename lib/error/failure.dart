import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];

  String get errorMessage => "";
}

class DefaultServerError extends Failure {
  @override
  String get errorMessage => "Server Error";
}
