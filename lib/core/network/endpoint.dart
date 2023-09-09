// ignore_for_file: non_constant_identifier_names

class EndPoint {
  //Auth endpoints
  static String LOGIN = "/auth/login";
  static String REGISTER = "/auth/register";
  static String VerifyCode = "/auth/verifyCode";
  static String logout = "/auth/logout";
  static String DeleteAccount = "/auth/deleteAccount";
  static String resetPassword = "/auth/reset_password";
  static String completeProfileData = "/auth/complete_data";

  // Profile endpoints
  static String getProfile = "/profile/profileDetails";
  static String updateProfile = "/profile/update_profile";
}
