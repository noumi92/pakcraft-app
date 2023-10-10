import 'package:intl/intl.dart';

class TFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('ss-MMM-yyyy').format(date);
  }
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_PK', symbol: '\$').format(amount);
  }
  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)}-${phoneNumber.substring(6)}';
    }else if(phoneNumber.length == 11){
      return'${phoneNumber.substring(0,4)}-${phoneNumber.substring(4,6)}';
    }
    return phoneNumber;
  }
  static internationalFormatPhoneNumber(String phoneNumber){}
}