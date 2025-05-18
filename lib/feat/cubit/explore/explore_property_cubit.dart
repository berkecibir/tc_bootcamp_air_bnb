import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/explore/propety_model.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/explore/property_repository.dart';
import 'explore_property_state.dart';

class ExplorePropertyCubit extends Cubit<ExplorePropertyState> {
  final PropertyRepository propertyRepo;
  late final List<PropetyModel> _allProperties;
  ExplorePropertyCubit(this.propertyRepo)
      : super(ExplorePropertyState(properties: propertyRepo.getProperties)) {
    _allProperties = propertyRepo.getProperties;
  }

/*   ExplorePropertyCubit(this.propertyRepo)
      : super(ExplorePropertyState(properties: propertyRepo.getProperties));
 */
  void toggleFavorite(int id) {
    final updatedList = state.properties.map((property) {
      if (property.id == id) {
        return property.copyWith(isFavorite: !property.isFavorite);
      }
      return property;
    }).toList();

    emit(ExplorePropertyState(properties: updatedList));
  }

  void search(String query) {
    final filteredList = _allProperties.where((property) {
      return property.location.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(ExplorePropertyState(properties: filteredList));
  }
}
