import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/Utils/app_router.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
            ),
            const Gap(25),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFile,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Gap(2),

                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14.copyWith(
                      color: Color(0xff707070),
                    ),
                  ),
                  const Gap(2),

                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),

                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
