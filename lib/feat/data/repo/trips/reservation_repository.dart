import 'package:tc_bootcamp_air_bnb/feat/core/configs/asset/app_images.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/duration/app_duration.dart';
import 'package:tc_bootcamp_air_bnb/feat/core/utils/const/app_texts.dart';
import 'package:tc_bootcamp_air_bnb/feat/data/model/trips/reservation_model.dart';

class ReservationRepository {
  Future<List<ReservationModel>> fetchReservations() async {
    await Future.delayed(AppDuration.oneSecond);
    return [
      ReservationModel(
        status: AppTexts.status,
        title: AppTexts.reservationTitle,
        description: AppTexts.reservationDesc,
        imagePath: AppImages.home2,
        startDate: DateTime(2023, 2, 13),
        endDate: DateTime(2023, 2, 14),
        location: AppTexts.istanbul2,
        country: AppTexts.country,
      ),
    ];
  }
}
