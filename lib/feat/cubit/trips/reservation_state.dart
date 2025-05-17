import 'package:tc_bootcamp_air_bnb/feat/data/model/trips/reservation_model.dart';

class ReservationState {
  final List<ReservationModel> reservations;
  final bool isLoading;

  ReservationState({
    required this.reservations,
    required this.isLoading,
  });

  factory ReservationState.initial() =>
      ReservationState(reservations: [], isLoading: true);
}
