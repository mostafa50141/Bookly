import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/book_details_section.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                  BookDetailsSection(),

                  Expanded(child: const SizedBox(height: 50)),

                  SimilarBooksSection(),

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
