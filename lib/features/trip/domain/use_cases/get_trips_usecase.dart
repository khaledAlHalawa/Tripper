import 'package:app/features/trip/data/models/trip_model.dart';
import 'package:app/features/trip/domain/repositories/trip_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class GetTripsUsecase implements UseCase<TripModel, GetTripsParams> {
  GetTripsUsecase({required this.repository});

  final TripRepository repository;

  @override
  Future<Either<Failure, TripModel>> call(GetTripsParams params) async => repository.getTrips(params.getMap());
}

class GetTripsParams {
  GetTripsParams({
    this.filterJourneyIds,
    this.filterCategoryIds,
    this.filterStationIds,
    this.filterPlaceIds,
    this.filterJourneyType,
    this.filterJourneyName,
    this.filterCategoryName,
    this.filterStationName,
    this.filterPlaceName,
    this.filterReview,
    this.filterMax,
    this.filterNumberOfDays,
    this.filterNumberOfDaysBetween,
    this.filterStartsBefore,
    this.filterEndBefore,
    this.filterEndBetween,
    this.filterStartsBetween,
    this.filterCityIds,
  });

    List<String>? filterJourneyIds;
    List<String>? filterCategoryIds;
    List<String>? filterStationIds;
    List<String>? filterPlaceIds;
    List<String>? filterCityIds;
    String? filterJourneyType;
    String? filterJourneyName;
    String? filterCategoryName;
    String? filterStationName;
    String? filterPlaceName;
    String? filterReview;
    String? filterMax;
    String? filterNumberOfDays;
    String? filterNumberOfDaysBetween;
    DateTime? filterStartsBefore;
    DateTime? filterEndBefore;
    DateTime? filterEndBetween;
    DateTime? filterStartsBetween;

  Map<String, dynamic> getMap() {
    final map = {
      "filter[journey_id]": convertListToString(filterJourneyIds),
      "filter[city_id]": convertListToString(filterCityIds),
      "filter[journey_type]": filterJourneyType,
      "filter[category_id]": convertListToString(filterCategoryIds),
      "filter[station_id]": convertListToString(filterStationIds),
      "filter[place_id]": convertListToString(filterPlaceIds),
      "filter[journey_name]": filterJourneyName,
      "filter[category_name]": filterCategoryName,
      "filter[station_name]": filterStationName,
      "filter[place_name]": filterPlaceName,
      "filter[review]": filterReview,
      "filter[max]": filterMax,
      "filter[number_of_days]": filterNumberOfDays,
      "filter[number_of_days_between]": filterNumberOfDaysBetween,
      "filter[starts_before]": formatDate(filterStartsBefore),
      "filter[ends_before]": formatDate(filterEndBefore),
      "filter[starts_between]": formatDate(filterStartsBetween,filterEndBetween),
      "filter[ends_between]": formatDate(filterStartsBetween,filterEndBetween),
    };

    return map..removeWhere((key, value) => value == null || value == "");
  }

  String? formatDate(DateTime? startDateTime,[DateTime? endsDateTime]) {
    if (endsDateTime == null && startDateTime == null) {
      return null;
    }else if(endsDateTime == null){
      return DateFormat('yyyy/MM/dd').format(startDateTime!);
    }else{
      return '${formatter(startDateTime!)},${formatter(endsDateTime)}';
    }
  }

  String formatter(DateTime dateTime){
    return DateFormat('yyyy/MM/dd').format(dateTime);
  }

  String convertListToString(List<String>? list) {
  return (list ?? []).join(',');

    // print('join: $join');
    // // return (list ?? []).join(',');
    // String converter = '';
    //
    //
    // for (int i = 0; i < (list?.length ?? 0); i++) {
    //   final element = list![i];
    //
    //   if (i == list.length - 1) {
    //     converter = '$converter${element.trim()}';
    //   } else {
    //     converter = '$converter${element.trim()},';
    //   }
    // }
    // return converter;
  }

  bool get isFilter {
    final list = [
      filterJourneyIds,
      filterCityIds,
      filterJourneyType,
      filterCategoryIds,
      filterStationIds,
      filterPlaceIds,
      filterJourneyName,
      filterCategoryName,
      filterStationName,
      filterPlaceName,
      filterReview,
      filterMax,
      filterNumberOfDays,
      filterNumberOfDaysBetween,
      filterStartsBefore,
      filterEndBefore,
      filterStartsBetween,
      filterEndBetween,
      filterJourneyIds,
      filterCategoryIds,
      filterStationIds,
      filterPlaceIds,
      filterCityIds,
    ];

    return list.any((element) => element != null);
  }

  GetTripsParams copyWith({
    final List<String>? filterJourneyIds,
    final List<String>? filterCategoryIds,
    final List<String>? filterStationIds,
    final List<String>? filterPlaceIds,
    final List<String>? filterCityIds,
    final String? filterJourneyType,
    final String? filterJourneyName,
    final String? filterCategoryName,
    final String? filterStationName,
    final String? filterPlaceName,
    final String? filterReview,
    final String? filterMax,
    final String? filterNumberOfDays,
    final String? filterNumberOfDaysBetween,
    final DateTime? filterStartsBefore,
    final DateTime? filterEndBefore,
    final DateTime? filterEndBetween,
    final DateTime? filterStartsBetween,
  }) =>
      GetTripsParams(
        filterJourneyIds: filterJourneyIds ?? this.filterJourneyIds,
        filterCityIds: filterCityIds ?? this.filterCityIds,
        filterJourneyType: filterJourneyType ?? this.filterJourneyType,
        filterCategoryIds: filterCategoryIds ?? this.filterCategoryIds,
        filterStationIds: filterStationIds ?? this.filterStationIds,
        filterPlaceIds: filterPlaceIds ?? this.filterPlaceIds,
        filterJourneyName: filterJourneyName ?? this.filterJourneyName,
        filterCategoryName: filterCategoryName ?? this.filterCategoryName,
        filterStationName: filterStationName ?? this.filterStationName,
        filterPlaceName: filterPlaceName ?? this.filterPlaceName,
        filterReview: filterReview ?? this.filterReview,
        filterMax: filterMax ?? this.filterMax,
        filterNumberOfDays: filterNumberOfDays ?? this.filterNumberOfDays,
        filterNumberOfDaysBetween: filterNumberOfDaysBetween ?? this.filterNumberOfDaysBetween,
        filterStartsBefore: filterStartsBefore ?? this.filterStartsBefore,
        filterEndBefore: filterEndBefore ?? this.filterEndBefore,
        filterStartsBetween: filterStartsBetween ?? this.filterStartsBetween,
        filterEndBetween: filterEndBetween ?? this.filterEndBetween,
      );

  @override
  String toString() {
    return 'GetTripsParams{filterJourneyIds: $filterJourneyIds, filterCategoryIds: $filterCategoryIds, filterStationIds: $filterStationIds, filterPlaceIds: $filterPlaceIds, filterCityIds: $filterCityIds, filterJourneyType: $filterJourneyType, filterJourneyName: $filterJourneyName, filterCategoryName: $filterCategoryName, filterStationName: $filterStationName, filterPlaceName: $filterPlaceName, filterReview: $filterReview, filterMax: $filterMax, filterNumberOfDays: $filterNumberOfDays, filterNumberOfDaysBetween: $filterNumberOfDaysBetween, filterStartsBefore: $filterStartsBefore, filterEndBefore: $filterEndBefore, filterEndBetween: $filterEndBetween, filterStartsBetween: $filterStartsBetween}';
  }
}
