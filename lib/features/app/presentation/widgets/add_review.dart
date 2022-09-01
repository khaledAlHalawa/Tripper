import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_elvated_button.dart';
import 'package:app/features/app/presentation/widgets/tripper_guest_widget.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../../../../common/helper/show_message.dart';
import '../../../../core/base/viewmodels/base_viewmodel.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../domain/repositories/prefs_repository.dart';

typedef ReviewableChanges = void Function(BuildContext context, int rating, String comment);

class AddReviewWidget extends StatefulWidget {
  AddReviewWidget({
    Key? key,
    required this.onReview,
    required this.viewmodel,
    this.rating,
    this.comment,
  }) : super(key: key);

  final ReviewableChanges onReview;
  final BaseViewmodel viewmodel;
  final double? rating;
  final String? comment;

  @override
  State<AddReviewWidget> createState() => _AddReviewWidgetState();
}

class _AddReviewWidgetState extends State<AddReviewWidget> {
  double rating = 0.0;
  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    rating = widget.rating ?? 0.0;
    controller = TextEditingController(text: widget.comment);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets,
      duration: const Duration(milliseconds: 300),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/review_pattern.png'), opacity: 0.03, fit: BoxFit.fill)),
        child: SingleChildScrollView(
          padding: HWEdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.verticalSpace,
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(7).r,
                      ),
                      padding: HWEdgeInsets.all(5),
                      child: Icon(Icons.close, color: Theme.of(context).colorScheme.grey, size: 20),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(5).r,
                    ),
                    height: 4.h,
                    width: 80.w,
                  ),
                  const Spacer(),
                ],
              ),
              25.verticalSpace,
              TripperText(
                text: "إضافة تقييم",
                textStyle: Theme.of(context).textTheme.button,
              ),
              if (_prefsRepository.hasUser) ...{
                25.verticalSpace,
                RatingBar.builder(
                  initialRating: widget.rating ?? 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  glow: false,
                  itemCount: 5,
                  updateOnDrag: true,
                  unratedColor: Theme.of(context).colorScheme.grey200,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rate_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  onRatingUpdate: (rating) {
                    this.rating = rating;
                    setState((){});
                  },
                ),
                15.verticalSpace,
                TextField(
                  minLines: 5,
                  maxLines: 5,
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10).r),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10).r),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10).r),
                      hintText: 'اكتب تعليقك هنا...'),
                ),
                100.verticalSpace,
                Observer(builder: (_) {
                  return TripperElevatedButton(
                    text: "تقييم",
                    onPressed: () {
                      if (rating.toInt() == 0) {
                        showMessage('من فضلك اضف تقييم', hasError: true);
                        return;
                      }
                      widget.onReview(context, rating.toInt(), controller.text);
                    },
                    isLoading: widget.viewmodel.isLoading,
                  );
                }),
              } else
                const Center(child: TripperGuestWidget(isComment: true)),
              50.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
