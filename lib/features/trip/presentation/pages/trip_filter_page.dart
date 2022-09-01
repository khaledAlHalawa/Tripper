import 'dart:developer';

import 'package:app/common/helper/show_message.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/filter/expandable_filter.dart';
import 'package:app/features/app/presentation/widgets/filter/place_draggable_sheet.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import 'package:app/features/app/presentation/widgets/tripper_draggable_sheet.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_button.dart';
import 'package:app/features/trip/domain/use_cases/get_trips_usecase.dart';
import 'package:app/features/trip/presentation/manager/trip_viewmodel.dart';
import 'package:app/features/trip/presentation/widgets/box_trip_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../app/presentation/widgets/filter/add_filter_item_chips.dart';
import '../../../app/presentation/widgets/filter/filter_chips.dart';
import '../../../app/presentation/widgets/filter/filter_slider_price.dart';
import '../../../app/presentation/widgets/filter/from_to_slider.dart';
import '../../../search/presentation/widgets/date_rang_picker.dart';
import '../../../search/presentation/widgets/tripper_drop_down_filter.dart';

class TripFilterPage extends ConsumerStatefulWidget {
  const TripFilterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<TripFilterPage> createState() => _TripFilterPageState();
}

class _TripFilterPageState extends ConsumerState<TripFilterPage> {
  static const _dayNumberList = [
    '1 يوم',
    '2 يوم',
    '3 أيام',
    '4 أيام',
    '5 أيام',
    '6 أيام',
    '7 أيام',
    '8 أيام',
    '9 أيام',
    '10 أيام'
  ];

  static const _starNumberList = ['1 نجمة', '2 نجوم', '3 نجوم', '4 نجوم', '5 نجوم'];

  static const _typeTripList = {'خاصة': 'private', 'عامة': "public"};

  static const typeJourneyConvert = {'private': 'خاصة', 'public': "عامة"};

  static final maxNumberOfSubscriptionsList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20'
  ];

  static const _typeDatePickerList = {
    'مجال': DateRangePickerSelectionMode.range,
    'يوم': DateRangePickerSelectionMode.single,
  };
  ValueNotifier<DateRangePickerSelectionMode> datePickerModeNotifier =
      ValueNotifier(DateRangePickerSelectionMode.range);

  DateTime? selectedDateTime;
  PickerDateRange? selectedRangeDateTime;
  String? journeyType;
  String? numberReview;
  String? numberOfDays;
  String? maxOfSubscription;

  bool isSelectedDate = false;
  bool isSelectedPlace = false;
  bool isSelectedPrice = false;
  bool isSelectedNumberOfDays = false;
  bool isSelectedReview = false;
  bool isSelectedJourneyType = false;
  bool isSelectedMaxNumber = false;

  late TripViewmodel tripViewmodel;

  @override
  Widget build(BuildContext context) {
    tripViewmodel = ref.watch(AppProvidersContainer.tripProvider);

    return Scaffold(
      appBar: tripFilterAppBar,
      body: ListView(
        padding: HWEdgeInsets.only(right: 20, top: 15, left: 20, bottom: 60),
        children: [
          dateBoxWidget(),
          20.verticalSpace,
          placeBoxWidget(context),
          20.verticalSpace,
          priceBoxWidget(),
          20.verticalSpace,
          numberDaysBoxWidget(),
          20.verticalSpace,
          reviewBoxWidget(),
          20.verticalSpace,
          tripTypeBoxWidget(),
          20.verticalSpace,
          maxSubscriptionsBoxWidget(),
        ],
      ),
    );
  }

  BoxTripFilter maxSubscriptionsBoxWidget() {
    return BoxTripFilter(
      child: ExpandableFilter(
        title: 'العدد الأعظمي',
        trailing: TripperDropDownFilter<String>(
          flex: 10,
          items: maxNumberOfSubscriptionsList,
          onChange: (val) {
            maxOfSubscription = val;
          },
          hint: 'اختر عدد الأشخاص',
        ),
        onChange: (val) {
          isSelectedMaxNumber = val;
          // if (val == false) {
          //   maxOfSubscription = null;
          // }
        },
      ),
    );
  }

  BoxTripFilter tripTypeBoxWidget() {
    return BoxTripFilter(
      child: ExpandableFilter(
        title: 'نوع الرحلة',
        trailing: TripperDropDownFilter<String>(
          flex: 2,
          items: _typeTripList.keys.toList(),
          onChange: (val) {
            journeyType = _typeTripList[val]!;
          },
          hint: 'اختر نوع الرحلة',
        ),
        onChange: (val) {
          isSelectedJourneyType = val;
          // if (val == false) {
          //   journeyType = null;
          // }
        },
      ),
    );
  }

  BoxTripFilter reviewBoxWidget() {
    return BoxTripFilter(
      child: ExpandableFilter(
        title: 'التقييم',
        trailing: TripperDropDownFilter<String>(
          flex: 2,
          items: _starNumberList,
          onChange: (val) {
            numberReview = (val as String).substring(0, 1);
          },
          hint: 'اختر عدد النجوم',
        ),
        onChange: (val) {
          isSelectedReview = val;
          // if (val == false) {
          //   numberReview = null;
          // }
        },
      ),
    );
  }

  BoxTripFilter numberDaysBoxWidget() {
    return BoxTripFilter(
      child: ExpandableFilter(
        title: 'عدد أيام الرحلة',
        trailing: TripperDropDownFilter<String>(
          flex: 3,
          items: _dayNumberList,
          onChange: (val) {
            numberOfDays = (val as String).substring(0, 1);
          },
          hint: 'اختر عدد الأيام',
        ),
        onChange: (val) {
          isSelectedNumberOfDays = val;
          // if (val == false) {
          //   numberOfDays = null;
          // }
        },
      ),
    );
  }

  BoxTripFilter priceBoxWidget() {
    return BoxTripFilter(
      child: ExpandableFilter(
        title: 'السعر',
        expandedWidget: Padding(
          padding: HWEdgeInsets.only(top: 20),
          child: Observer(builder: (context) {
            return Column(
              children: [
                TripperSlider(
                  onDragging: (int handlerIndex, dynamic lowerValue, dynamic upperValue) {
                    tripViewmodel.changeMinMaxValue(lowerValue, upperValue);
                  },
                  maxRange: tripViewmodel.maxRange,
                  minRange: tripViewmodel.minRange,
                  minValue: tripViewmodel.minValue,
                  maxValue: tripViewmodel.maxValue,
                ),
                15.verticalSpace,
                FromToSlider(from: tripViewmodel.minValue, to: tripViewmodel.maxValue),
              ],
            );
          }),
        ),
        onChange: (val) {
          isSelectedPrice = val;
        },
      ),
    );
  }

  BoxTripFilter placeBoxWidget(BuildContext context) {
    return BoxTripFilter(
      child: ExpandableFilter(
        title: 'أماكن توجد ضمن الرحلة',
        expandedWidget: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Observer(
                builder: (context) {
                  return Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 10.w,
                    runSpacing: 10.h,
                    runAlignment: WrapAlignment.start,
                    children: List.generate(
                      tripViewmodel.selectedPlaces.keys.length,
                      (index) => FilterChips(
                        title: tripViewmodel.selectedPlaces.values.toList()[index],
                        onTap: (value) {
                          tripViewmodel.addOrRemovePlaceEntry(MapEntry<String, String>(
                              tripViewmodel.selectedPlaces.keys.toList()[index],
                              tripViewmodel.selectedPlaces.values.toList()[index]));
                        },
                      ),
                    ),
                  );
                },
              ),
              10.verticalSpace,
              AddFilterItemChips(
                onTap: () {
                  TripperDraggableSheet.show(
                    context: context,
                    builder: (_, sc) {
                      return PlaceDraggableSheet(scrollController: sc);
                    },
                    title: "اضافة مكان ضمن الرحلة",
                  );
                },
                title: 'إضافة مكان',
              )
            ],
          ),
        ),
        onChange: (val) {
          isSelectedPlace = val;
        },
      ),
    );
  }

  BoxTripFilter dateBoxWidget() {
    return BoxTripFilter(
      child: ExpandableFilter(
        title: 'حدد تاريخ الرحلة',
        expandedWidget: Padding(
          padding: HWEdgeInsets.only(top: 10),
          child: ValueListenableBuilder<DateRangePickerSelectionMode>(
            valueListenable: datePickerModeNotifier,
            builder: (context, datePickerMode, child) {
              return Column(
                children: [
                  Row(
                    children: [
                      TripperText(
                          text: 'اختر نوع التاريخ:',
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: Theme.of(context).colorScheme.grey)),
                      const Spacer(),
                      TripperDropDownFilter<String>(
                        items: _typeDatePickerList.keys.toList(),
                        onChange: (val) => onChangeTypeDatePicker(val, datePickerMode),
                        value: _typeDatePickerList.keys.toList()[0],
                      ),
                      10.horizontalSpace,
                    ],
                  ),
                  10.verticalSpace,
                  TripperDatePicker(
                    onSelectionChanged: onSelectionDatePickerChange,
                    datePickerMode: datePickerMode,
                  ),
                ],
              );
            },
          ),
        ),
        onChange: (val) {
          isSelectedDate = val;
          // if (val == false) {
          //   selectedDateTime = null;
          //   selectedRangeDateTime = null;
          // }
        },
      ),
    );
  }

  TripperAppBar get tripFilterAppBar => TripperAppBar(
        appBarParams: AppBarParams(
            leadingAppBar: LeadingAppBar.back,
            title: 'فلترة حسب الرحلات',
            elevation: 5.0,
            surfaceTintColor: Theme.of(context).appBarTheme.backgroundColor,
            shadowColor: Colors.black45,
            action: [
              Observer(builder: (context) {
                final hasPlace = tripViewmodel.selectedPlaces.keys.isNotEmpty;

                return TripperTextButton(
                  text: 'حفظ',
                  onPressed: () => onSave(hasPlace, tripViewmodel.selectedPlaces),
                  style: ElevatedButton.styleFrom(
                    shape: Theme.of(context).textButtonTheme.style?.shape?.resolve({}),
                    onPrimary: Theme.of(context).colorScheme.primary,
                  ),
                  isLoading: tripViewmodel.isLoading,
                );
              })
            ]),
      );

  void onSelectionDatePickerChange(DateRangePickerSelectionChangedArgs dateArgs) {
    if (dateArgs.value is DateTime) {
      selectedRangeDateTime = null;
      selectedDateTime = dateArgs.value as DateTime;
    } else if (dateArgs.value is PickerDateRange) {
      selectedDateTime = null;
      selectedRangeDateTime = dateArgs.value as PickerDateRange;
    }
  }

  void onChangeTypeDatePicker(val, DateRangePickerSelectionMode datePickerMode) {
    final selectedMode = _typeDatePickerList[val]!;
    if (selectedMode == datePickerMode) {
      return;
    }
    selectedDateTime = null;
    selectedRangeDateTime = null;
    datePickerModeNotifier.value = selectedMode;
  }

  onSave(bool hasPlace, Map<String, String> selectedPlaces) {
    Map<int, List<String>> filteredData = {};

    GetTripsParams params = GetTripsParams();

    if (isSelectedDate) {
      if (selectedDateTime == null && selectedRangeDateTime == null) {
        showMessage('من فضلك اختر تاريخ الرحلة أولا.', hasError: true);
        return;
      } else {
        if (selectedDateTime != null) {

          params = params.copyWith(filterStartsBefore: selectedDateTime);
          filteredData[0] = [
            "تاريخ الرحلة",
            GetTripsParams().formatter(selectedDateTime!)
          ];

        } else {
          if (selectedRangeDateTime?.startDate != null && selectedRangeDateTime?.endDate != null) {
            params = params.copyWith(
              filterStartsBetween: selectedRangeDateTime?.startDate,
              filterEndBetween: selectedRangeDateTime?.endDate,
            );
            filteredData[0] = [
              "تاريخ الرحلة بين",
              "${GetTripsParams().formatter(selectedRangeDateTime!.startDate!)} - ${GetTripsParams().formatter(selectedRangeDateTime!.endDate!)}"
            ];
          } else {
            showMessage('من فضلك اختر تاريخ البداية والنهاية.', hasError: true);
            return;
          }
        }
      }
    }

    if (isSelectedPlace) {
      if (!hasPlace) {
        showMessage('من فضلك اختر مكان واحد على الأقل.', hasError: true);
        return;
      } else {
        params = params.copyWith(filterPlaceIds: selectedPlaces.keys.toList());
        filteredData[1] = [
          "أماكن توجد ضمن الرحلة",
          GetTripsParams().convertListToString(selectedPlaces.values.toList()),
        ];
      }
    }

    if (isSelectedNumberOfDays) {
      if (numberOfDays == null) {
        showMessage('من فضلك اختر عدد أيام الرحلة.', hasError: true);
        return;
      } else {
        params = params.copyWith(filterNumberOfDays: numberOfDays);
        filteredData[2] = [
          "عدد الأيام",
          numberOfDays!,
        ];
      }
    }

    if (isSelectedReview) {
      if (numberReview == null) {
        showMessage('من فضلك اختر التقييم أولاً.', hasError: true);
        return;
      } else {
        params = params.copyWith(filterReview: numberReview);
        filteredData[3] = [
          "التقييم",
          numberReview!,
        ];
      }
    }

    if (isSelectedJourneyType) {
      if (journeyType == null) {
        showMessage('من فضلك اختر نوع الرحلة أولاً.', hasError: true);
        return;
      } else {
        params = params.copyWith(filterJourneyType: journeyType);
        filteredData[4] = [
          "نوع الرحلة",
          typeJourneyConvert[journeyType]!,
        ];
      }
    }

    if (isSelectedMaxNumber) {
      if (maxOfSubscription == null) {
        showMessage('من فضلك اختر عدد الأشخاص.', hasError: true);
        return;
      } else {
        params = params.copyWith(filterMax: maxOfSubscription);
        filteredData[5] = [
          "عدد الأشخاص",
          maxOfSubscription!,
        ];
      }
    }

    log(params.getMap().values.toString());
    tripViewmodel.fetchTrips(
      params,
      onSuccess: () => Navigator.pop(context, [params, filteredData]),
    );
  }
}
