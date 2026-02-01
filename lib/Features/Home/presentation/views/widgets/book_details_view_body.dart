import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Gap(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.17),
              child: CustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}
