import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/trips/reservation_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/trips/reservation_repository.dart';

class ReservationCubit extends Cubit<ReservationState> {
  final ReservationRepository repository;

  ReservationCubit(this.repository) : super(ReservationState.initial());
  Future<void> loadReservations() async {
    emit(ReservationState(reservations: [], isLoading: true));

    final reservations = await repository.fetchReservations();

    if (!isClosed) {
      emit(ReservationState(reservations: reservations, isLoading: false));
    }
  }
}
