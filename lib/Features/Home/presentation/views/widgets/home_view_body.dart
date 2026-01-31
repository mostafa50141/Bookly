import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/Utils/assetsData.dart';
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
        children: [
          CustomAppBar(),
          Gap(10),
          FeaturedBooksListView(),
          Gap(30),
          Text('Best Sellers', style: Styles.textStyle18),
          Gap(15),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Harry Potter', style: Styles.textStyle18),
              const Gap(6),
              Text(
                'J.K. Rowling',
                style: Styles.textStyle18.copyWith(color: Colors.white70),
              ),
              const Gap(20),
              Row(
                children: [
                  Text('10.99 \$', style: Styles.textStyle18),
                  const Gap(20),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber[700], size: 20),
                  const Gap(5),
                  Text('4.8', style: Styles.textStyle18),
                  const Gap(10),
                  Text(
                    '(2000)',
                    style: Styles.textStyle18.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
