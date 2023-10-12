// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [account_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountModel extends Equatable {
  AccountModel() {}

  AccountModel copyWith() {
    return AccountModel();
  }

  @override
  List<Object?> get props => [];
}
