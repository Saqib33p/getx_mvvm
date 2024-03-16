import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Email',
          'internet_exception':
              "We're unable to show results.\nPlease check your data\nconenction.",
          'retry': "Retry",
          'general_exception':
              "We're unable to process your request.\n Please try again",
          'login': "Login",
          'welcome_back': 'Welcome\nBack',
          'password_hint': 'Password',
        },
        'ur_PK': {
          'email_hint': 'asدسسدفاسف',
          'internet_exception':
              "ہم نتائج دکھانے سے قاصر ہیں۔\n براہ کرم اپنا ڈیٹا کنکشن چیک کریں۔",
          'retry': " دوبارہ کوشش کریں",
          'general_exception':
              "ہم آپ کی درخواست پر کارروائی کرنے سے قاصر ہیں۔\n دوبارہ کوشش کریں",
          'login': "لاگ ان کریں",
        },
      };
}
