import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import 'package:flutter/material.dart';
import '../../../app/presentation/widgets/filter/expandable_filter.dart';
import '../../../app/presentation/widgets/filter/filter_slider_price.dart';
import '../../../app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(
          leadingAppBar: LeadingAppBar.back,
          title: "فلترة",
        ),
      ),
      body: Column(
        children: [
          ExpandableFilter(
            title: "sadasdas",
            expandedWidget: Container(),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TripperSlider(onDragging: (val , _, __) {  },minRange: 50,maxRange: 100),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

