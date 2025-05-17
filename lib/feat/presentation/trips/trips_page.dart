import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/trips/reservation_cubit.dart';
import 'package:tc_bootcamp_air_bnb/feat/cubit/trips/reservation_state.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/repo/trips/reservation_repository.dart';
import 'package:tc_bootcamp_air_bnb/feat/product/widget/reservation_card.dart';

import '../../core/configs/theme/app_theme.dart';

class TripsPage extends StatelessWidget {
  static const String id = AppTexts.tripsId;
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ReservationCubit(ReservationRepository())..loadReservations(),
      child: Scaffold(
        appBar: AppBar(title: const Text(AppTexts.tripsAppBarTitle)),
        body: BlocBuilder<ReservationCubit, ReservationState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.reservations.isEmpty) {
              return Center(
                  child: Text(
                AppTexts.noReservation,
                style: AppTheme.appTheme.textTheme.bodyLarge,
              ));
            }
            return ListView.builder(
              itemCount: state.reservations.length,
              itemBuilder: (context, index) {
                return ReservationCard(reservation: state.reservations[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
