import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nav_bloc/app/second/second_cubit.dart';
import 'package:flutter_nav_bloc/pages/second_pages/second_first_page.dart';
import 'package:flutter_nav_bloc/pages/second_pages/second_page.dart';
import 'package:flutter_nav_bloc/pages/second_pages/second_second_page.dart';

class SecondNavPage extends StatelessWidget {
  const SecondNavPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: SecondNavPage());

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<SecondState>(
      state: context.select<SecondCubit, SecondState>((cubit) => cubit.state),
      onGeneratePages: (state, pages) => [
        SecondPage.page(),
        if (state is SecondStateFirst) SecondFirstPage.page(),
        if (state is SecondStateSecond) SecondSecondPage.page(),
      ],
    );
  }
}
