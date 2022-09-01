import 'package:app/common/constant/configuration/global.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import 'package:app/features/place/presentation/manager/place_viewmodel.dart';
import 'package:app/features/place/presentation/widgets/porduct_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../../app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import '../../../app/presentation/widgets/tripper_empty_state.dart';
import '../../../app/presentation/widgets/tripper_loader.dart';
import '../../domain/entities/product.dart';

class AllProductsScreen extends ConsumerStatefulWidget {
  const AllProductsScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends ConsumerState<AllProductsScreen> {
  late PagingController<int, Product> pagingController;
  final PlaceViewmodel placeViewmodel = GetIt.I<PlaceViewmodel>();

  @override
  void initState() {
    super.initState();

    pagingController = PagingController(firstPageKey: 1, invisibleItemsThreshold: invisibleItemsThreshold);

    pagingController.addPageRequestListener((pageKey) {
      placeViewmodel.fetchProducts(
        pageKey,
        onGetPage: (products) => _handlePagination(products, pageKey),
      );
    });
  }

  _handlePagination(List<Product> list, int pageKey) {
    try {
      final isLastPage = list.length < perPageSize;
      if (isLastPage) {
        pagingController.appendLastPage(list);
      } else {
        final nextPageKey = ++pageKey;
        pagingController.appendPage(list, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(
          leadingAppBar: LeadingAppBar.back,
          title: "المنتجات",
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 10.h, bottom: 20.h, left: 20.w, right: 20.w),
            sliver: Observer(
              builder: (context) {
                return PagedSliverList<int, Product>.separated(
                  pagingController: pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Product>(
                      itemBuilder: (_, item, index) => ProductCard(product: item),
                      firstPageProgressIndicatorBuilder: (_) => TripperLoader(),
                      newPageProgressIndicatorBuilder: (_) => TripperLoader(),
                      noItemsFoundIndicatorBuilder: (_) => const TripperEmptyState(emptyStateTypes: EmptyStateTypes.products)),
                  separatorBuilder: (_, __) => 12.verticalSpace,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
