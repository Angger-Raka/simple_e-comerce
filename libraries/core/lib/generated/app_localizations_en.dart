import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get settings => 'Settings';

  @override
  String get changeLanguage => 'Change Language';

  @override
  String get changeTheme => 'Change Theme';

  @override
  String get requiredFill => ' * Required';

  @override
  String get invalidEmail => ' * Invalid email';

  @override
  String get invalidPhoneNumber => ' * Invalid phone number';

  @override
  String get invalidBirthDay => ' * Invalid';

  @override
  String get invalidBirthMonth => ' * Invalid';

  @override
  String get invalidBirthYear => ' * Invalid';

  @override
  String get atLeast8Chars => ' * At least 8 characters';

  @override
  String get atLeast3Chars => ' * At least 3 characters';

  @override
  String get login => 'Login';

  @override
  String get loginDesc => 'Login to continue';

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get register => 'Register';

  @override
  String get registerDesc => 'Register to continue';

  @override
  String get fullName => 'Full Name';

  @override
  String get email => 'Email';

  @override
  String get passwordConfirmation => 'Password Confirmation';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get profile => 'Profile';

  @override
  String get order => 'Order';

  @override
  String get address => 'Address';

  @override
  String get cartEmpty => 'Oops..\nYour cart is empty!';

  @override
  String get chooseAddress => 'Choose Address';

  @override
  String get addressDelivery => 'Delivery Address';

  @override
  String get addressSatte => 'City, Province, Postal Code';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get paynow => 'Pay Now';
}
