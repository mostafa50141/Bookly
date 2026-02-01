import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';
import 'package:gap/gap.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const Gap(20),

        const SimilarBooksListView(),
      ],
    );
  }
}
