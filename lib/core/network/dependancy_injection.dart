import 'package:get_it/get_it.dart';
import 'package:padle_me/core/utiles/cubit/app_cubit.dart';
import 'package:padle_me/presentation/screen/auth/cubit/auth_cubit.dart';

Future<void> init() async {
  GetIt.instance.registerLazySingleton<AppCubit>(() => AppCubit());
  GetIt.instance.registerLazySingleton<AuthCubit>(() => AuthCubit());
  // GetIt.instance.registerSingleton<HomeCubit>(HomeCubit());
}
