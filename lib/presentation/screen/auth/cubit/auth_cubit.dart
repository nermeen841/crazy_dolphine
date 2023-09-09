import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/presentation/screen/auth/action/complete_data.dart';
import 'package:padle_me/presentation/screen/auth/action/reset_password.dart';
import 'package:padle_me/presentation/screen/auth/complete_data/complete_data.dart';
// import 'package:meta/meta.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/router/router.dart';
import '../../layout/layout.dart';
import '../../splash/splash.dart';
import '../action/delete_account.dart';
import '../action/get_profile.dart';
import '../action/login.dart';
import '../action/logout.dart';
import '../action/register.dart';
import '../action/update_profile.dart';
import '../action/verify_code.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  postRegister({
    required String name,
    required String phone,
    required String email,
    required String confirmPassword,
    required String password,
  }) async {
    emit(RegisterLoadingState());

    await RegisterActions(
      email: email,
      phone: phone,
      confirmPassword: confirmPassword,
      password: password,
    ).run().then((value) => value.fold((l) {
          emit(RegisterErrorState());
        }, (r) {
          // prefs.setString("token", r!.user!.token!);
          emit(RegisterSuccessState());
          MagicRouter.navigateTo(const CompleteDataScreen());
        }));
  }

////////////////////////////////////////////////////////////////////
  postLogin({
    required String phone,
    required String password,
  }) async {
    emit(LoginLoadingState());
    await LoginActions(
      phone: phone,
      password: password,
    ).run().then((value) => value.fold((l) {
          emit(LoginErrorState());
        }, (r) {
          // prefs.setString('token', r!.user!.token!);
          prefs.setBool("login", true);
          emit(LoginSuccessState());
          MagicRouter.navigateAndPopAll(const LayoutScreen());
        }));
  }
////////////////////////////////////////////////////////////////////

  verifyCode({
    required String code,
  }) async {
    emit(VerifyCodeLoadingState());
    await VerifyActions(
      code: code,
    ).run().then((value) => value.fold((l) {
          emit(VerifyCodeErrorState());
        }, (r) {
          prefs.setBool("login", true);

          emit(VerifyCodeSuccessState());
          MagicRouter.navigateAndPopAll(const LayoutScreen());
        }));
  }

////////////////////////////////////////////////////////////////////
  // ProfileModel? profileModel;
  Future getProfileData() async {
    emit(GetProfileLoadingState());
    await GetProfileActions().run().then(
          (value) => value.fold(
            (l) {
              emit(GetProfileErrorState());
            },
            (r) {
              // profileModel = r;
              emit(GetProfileSuccessState());
              // return profileModel;
            },
          ),
        );
  }
/////////////////////////////////////////////////////////////////

  updateProfile({
    String? name,
    String? phone,
    String? email,
  }) async {
    emit(UpdateProfileLoadingState());
    await UpdateProfileActions(
      phone: phone,
      email: email,
      name: name,
    ).run().then((value) => value.fold((l) {
          emit(UpdateProfileErrorState());
        }, (r) {
          emit(UpdateProfileSuccessState());
          getProfileData();
        }));
  }
//////////////////////////////////////////////////////////////////////////////////////////

  postLogout() async {
    emit(LogOutLoadingState());
    await LogoutActions().run().then((value) => value.fold((l) {
          emit(LogOutErrorState());
        }, (r) {
          prefs.clear();
          emit(LogOutSuccessState());
          MagicRouter.navigateAndPopAll(const SplashScreen());
        }));
  }

/////////////////////////////////////////////////////////////////
  deleteAccount() async {
    emit(DeleteAccountLoadingState());
    await DeleteAccountActions().run().then((value) => value.fold((l) {
          emit(DeleteAccountErrorState());
        }, (r) {
          prefs.clear();
          emit(DeleteAccountSuccessState());
          MagicRouter.navigateAndPopAll(const SplashScreen());
        }));
  }

  ////////////////////////////////////////////////////////////////////////////
  resetPassword(String email) async {
    emit(ResendCodeLoadingState());
    await ResetPasswordAction(email).run().then(
          (value) => value.fold(
            (l) {
              emit(ResendCodeErrorState());
            },
            (r) {
              emit(ResendCodeSuccessState());
            },
          ),
        );
  }

  ///////////////////////////////////////////////////////////////////
  completeProfileData({
    required String firstName,
    required String lastName,
    required String phone,
    required String birthDate,
    required String gender,
  }) async {
    emit(CompleteProfileLoadingState());
    await CompleteDataAction(
            firstName: firstName,
            lastName: lastName,
            phone: phone,
            birthDate: birthDate,
            gender: gender)
        .run()
        .then(
          (value) => value.fold(
            (l) {
              debugPrint(l.message);
              emit(CompleteProfileErrorState());
            },
            (r) {
              emit(CompleteProfileSuccessState());
              getProfileData();
              MagicRouter.navigateAndPopAll(const LayoutScreen());
            },
          ),
        );
  }
}
