import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum EmptyStateTypes {
  place,
  trip,
  city,
  specs,
  favorite,
  comments,
  products,
}

extension EmptyStateUtils on EmptyStateTypes {
  Widget get image {
    switch (this) {
      case EmptyStateTypes.place:
        return Image.asset('assets/images/place_empty_state.png', scale: 3);
      case EmptyStateTypes.trip:
        return Image.asset('assets/images/trip_empty_state.png', scale: 3);
      case EmptyStateTypes.city:
        return Image.asset('assets/images/city_empty_state.png', scale: 3);
      case EmptyStateTypes.specs:
        return Image.asset('assets/images/specification_empty_state.png', scale: 5);
      case EmptyStateTypes.favorite:
        return Image.asset('assets/images/favorite_empty-state.png', scale: 3);
      case EmptyStateTypes.comments:
        return Image.asset('assets/images/comments_empty_state.png', scale: 3);
      case EmptyStateTypes.products:
        return Image.asset('assets/images/products_empty_state.png', scale: 5);
    }
  }

  String get title {
    switch (this) {
      case EmptyStateTypes.place:
        return 'لا يوجد أماكن';
      case EmptyStateTypes.trip:
        return 'لا يوجد رحلات';
      case EmptyStateTypes.city:
        return 'لا يوجد مدن';
      case EmptyStateTypes.specs:
        return 'لا يوجد خصائص';
      case EmptyStateTypes.favorite:
        return 'لا يوجد  عناضر بالمفضلة';
      case EmptyStateTypes.comments:
        return 'لا يوجد تعليقات';
      case EmptyStateTypes.products:
        return 'لا يوجد منتجات';
    }
  }

  String? get descriptions {
    switch (this) {
      case EmptyStateTypes.place:
        return 'عند إضافة مكان سيظهر هنا.';
      case EmptyStateTypes.trip:
        return 'عند إضافة رحلة ستظهر هنا.';
      case EmptyStateTypes.city:
        return 'عند إضافة مدينة ستظهر هنا.';
      case EmptyStateTypes.specs:
        return 'عند إضافة خصائص لهذا المكان ستظهر هنا.';
      case EmptyStateTypes.favorite:
        return 'عند إضافة عناصر للمفضلة ستظهر هنا.';
      case EmptyStateTypes.comments:
        return 'كن أول من يعلق و يقييم المحتوى.';
      case EmptyStateTypes.products:
        return 'عند إضافة منتجات جديدة ستظهر هنا.';
    }
  }
}

class TripperEmptyState extends StatelessWidget {
  const TripperEmptyState({
    Key? key,
    required this.emptyStateTypes,
    this.title,
    this.description,
  }) : super(key: key);

  final EmptyStateTypes emptyStateTypes;
  final String? title;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        20.verticalSpace,
        emptyStateTypes.image,
        25.verticalSpace,
        TripperText(
          text: title ?? emptyStateTypes.title,
          textStyle: Theme.of(context).textTheme.button,
        ),
        if (emptyStateTypes.descriptions != null) ...{
          10.verticalSpace,
          TripperText(
            text: description ?? emptyStateTypes.descriptions!,
            textStyle: Theme.of(context).textTheme.bodyText2,
          ),

        },
        20.verticalSpace,
      ],
    );
  }
}
