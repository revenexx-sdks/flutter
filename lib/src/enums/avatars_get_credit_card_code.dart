part of '../../enums.dart';

enum AvatarsGetCreditCardCode {
  amex(value: 'amex'),
  argencard(value: 'argencard'),
  cabal(value: 'cabal'),
  cencosud(value: 'cencosud'),
  diners(value: 'diners'),
  discover(value: 'discover'),
  elo(value: 'elo'),
  hipercard(value: 'hipercard'),
  jcb(value: 'jcb'),
  mastercard(value: 'mastercard'),
  naranja(value: 'naranja'),
  targetaShopping(value: 'targeta-shopping'),
  unionpay(value: 'unionpay'),
  visa(value: 'visa'),
  mir(value: 'mir'),
  maestro(value: 'maestro'),
  rupay(value: 'rupay');

  const AvatarsGetCreditCardCode({required this.value});

  final String value;

  String toJson() => value;
}
