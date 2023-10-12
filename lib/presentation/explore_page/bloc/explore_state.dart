// ignore_for_file: must_be_immutable

part of 'explore_bloc.dart';

/// Represents the state of Explore in the application.
class ExploreState extends Equatable {
  ExploreState({
    this.searchController,
    this.exploreModelObj,
  });

  TextEditingController? searchController;

  ExploreModel? exploreModelObj;

  @override
  List<Object?> get props => [
        searchController,
        exploreModelObj,
      ];
  ExploreState copyWith({
    TextEditingController? searchController,
    ExploreModel? exploreModelObj,
  }) {
    return ExploreState(
      searchController: searchController ?? this.searchController,
      exploreModelObj: exploreModelObj ?? this.exploreModelObj,
    );
  }
}
