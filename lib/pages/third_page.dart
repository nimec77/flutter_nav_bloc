import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nav_bloc/app/app_cubit.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: ThirdPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () => _onWillPop(context),
        child: Center(
          child: Text(
            'Third Page',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    context.read<AppCubit>().homePage();

    return true;
  }
}
