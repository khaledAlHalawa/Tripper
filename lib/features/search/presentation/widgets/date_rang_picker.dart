import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TripperDatePicker extends StatelessWidget {
  const TripperDatePicker({
    Key? key,
    this.onSelectionChanged,
    this.minDate,
    this.maxDate,
    this.datePickerMode,
  }) : super(key: key);

  final DateRangePickerSelectionChangedCallback? onSelectionChanged;
  final DateTime? minDate;
  final DateTime? maxDate;
  final DateRangePickerSelectionMode? datePickerMode;

  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      minDate: minDate ?? DateTime.now(),
      maxDate: maxDate ?? DateTime.now().add(const Duration(days: 365)),
      selectionMode: datePickerMode ?? DateRangePickerSelectionMode.range,
      enablePastDates: true,
      onSelectionChanged: onSelectionChanged,
    );
  }
}
