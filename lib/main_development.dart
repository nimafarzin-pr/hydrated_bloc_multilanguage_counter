import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_bloc/app/app.dart';
import 'package:todo_bloc/bootstrap.dart';
import 'package:todo_bloc/language/cubit/language_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final tempDir = await getApplicationSupportDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: tempDir,
  );
  await bootstrap(
    () => BlocProvider(
      create: (context) => LanguageCubit(),
      child: const App(),
    ),
  );
}
