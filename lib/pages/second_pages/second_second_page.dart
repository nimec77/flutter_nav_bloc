import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nav_bloc/app/second/second_cubit.dart';

class SecondSecondPage extends StatelessWidget {
  const SecondSecondPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage(child: SecondSecondPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second First Page'),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () => _onWillPop(context),
        child: Center(
          child: Text(
            'Second Second Page',
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
    context.read<SecondCubit>().secondHomePage();
    return true;
  }
}
