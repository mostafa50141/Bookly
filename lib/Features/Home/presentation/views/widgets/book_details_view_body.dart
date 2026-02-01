import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomBookDetailsAppBar(),

                  //const Gap(20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: const CustomBookImage(),
                  ),
                  const Gap(20),

                  const Text('The Jungle Book', style: Styles.textStyle30),
                  const Gap(3),

                  Text(
                    'by Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.white60,
                    ),
                  ),
                  const Gap(18),

                  const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                  const Gap(20),

                  const BooksAction(),

                  Expanded(child: const SizedBox(height: 50)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Gap(20),

                  const SimilarBooksListView(),
                  const Gap(50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
