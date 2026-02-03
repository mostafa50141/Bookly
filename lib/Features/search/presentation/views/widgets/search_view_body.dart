import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(children: const [Gap(20), CustomSearchTextField()]),
    );
  }
}
