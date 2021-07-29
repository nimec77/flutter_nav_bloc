import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nav_bloc/app/app_cubit.dart';
import 'package:flutter_nav_bloc/pages.dart';
import 'package:flutter_nav_bloc/pages/third_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppState>(
      state: context.select<AppCubit, AppState>((cubit) => cubit.state),
      onGeneratePages: (state, pages) => [
        HomePage.page(),
        if (state is AppStateSecondPage) SecondNavPage.page(),
        if (state is AppStateThirdPage) ThirdPage.page(),
      ],
    );
  }
}
