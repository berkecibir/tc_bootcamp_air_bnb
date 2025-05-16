import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/explore/property_repository.dart';
import 'explore_property_state.dart';

class ExplorePropertyCubit extends Cubit<ExplorePropertyState> {
  final PropertyRepository propertyRepo;

  ExplorePropertyCubit(this.propertyRepo)
      : super(ExplorePropertyState(properties: propertyRepo.getProperties));

  void toggleFavorite(int id) {
    final updatedList = state.properties.map((property) {
      if (property.id == id) {
        return property.copyWith(isFavorite: !property.isFavorite);
      }
      return property;
    }).toList();

    emit(ExplorePropertyState(properties: updatedList));
  }
}
