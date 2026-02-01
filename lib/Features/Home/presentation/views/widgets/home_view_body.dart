import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const CustomAppBar(),
              ),
              const Gap(5),
              const FeaturedBooksListView(),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Best Sellers', style: Styles.textStyle18),
              ),
              const Gap(15),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: const BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
