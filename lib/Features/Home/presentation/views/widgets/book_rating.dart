import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: 16,
        ),
        const Gap(6),

        Text('4.8', style: Styles.textStyle16),
        const Gap(5),

        Text(
          '(2000)',
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
