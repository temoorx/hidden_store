// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [sort_by_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SortByModel extends Equatable {
  SortByModel() {}

  SortByModel copyWith() {
    return SortByModel();
  }

  @override
  List<Object?> get props => [];
}
