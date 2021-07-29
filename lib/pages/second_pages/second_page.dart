import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nav_bloc/app/app_cubit.dart';
import 'package:flutter_nav_bloc/app/second/second_cubit.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: SecondPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              final chosenExit = await _exitDialog(context);
              if (chosenExit) {
                context.read<AppCubit>().homePage();
              }
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: () => _onWillPop(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Second Page',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  context.read<SecondCubit>().secondFirstPage();
                },
                child: const Text('Goto Second First Page'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<SecondCubit>().secondSecondPage();
                },
                child: const Text('Goto Second Second Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    final chosenExit = await _exitDialog(context);

    if (chosenExit) {
      context.read<AppCubit>().homePage();
    }

    return chosenExit;
  }

  Future<bool> _exitDialog(BuildContext context) async {
    final result = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit on Home page'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        );

    return result ?? false;
  }
}
