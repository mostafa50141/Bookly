import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), Gap(2), CustomListViewItem()]);
  }
}
