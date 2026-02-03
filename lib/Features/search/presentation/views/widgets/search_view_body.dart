import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter_application_1/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Gap(20),
          CustomSearchTextField(),
          Gap(20),
          Text('Search Result', style: Styles.textStyle18),
          Gap(10),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
