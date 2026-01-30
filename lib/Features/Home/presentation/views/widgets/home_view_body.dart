import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          Gap(10),
          FeaturedBooksListView(),
          Gap(30),
          Text('Best Sellers', style: Styles.titleMedium),
        ],
      ),
    );
  }
}
