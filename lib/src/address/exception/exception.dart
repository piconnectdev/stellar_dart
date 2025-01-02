import 'package:stellar_dart/src/exception/exception.dart';

class StellarAddressException extends DartStellarPlugingException {
  const StellarAddressException(super.message, {super.details});
}
