import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:revenexx/models.dart' as models;
import 'package:revenexx/enums.dart' as enums;
import 'package:revenexx/src/enums.dart';
import 'package:revenexx/src/response.dart';
import 'dart:typed_data';
import 'package:revenexx/revenexx.dart';

class MockClient extends Mock implements Client {
  Map<String, String> config = {'project': 'testproject'};
  String endPoint = 'https://localhost/v1';
  @override
  Future<Response> call(
    HttpMethod? method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    return super.noSuchMethod(Invocation.method(#call, [method]),
        returnValue: Response());
  }

  @override
  Future webAuth(
    Uri? url, {
    String? callbackUrlScheme,
  }) async {
    return super
        .noSuchMethod(Invocation.method(#webAuth, [url]), returnValue: 'done');
  }

  @override
  Future<Response> chunkedUpload({
    String? path,
    Map<String, dynamic>? params,
    String? paramName,
    String? idParamName,
    Map<String, String>? headers,
    Function(UploadProgress)? onProgress,
  }) async {
    return super.noSuchMethod(
        Invocation.method(
            #chunkedUpload, [path, params, paramName, idParamName, headers]),
        returnValue: Response(data: {}));
  }
}

void main() {
  group('Locale test', () {
    late MockClient client;
    late Locale locale;

    setUp(() {
      client = MockClient();
      locale = Locale(client);
    });

    test('test method localeGet()', () async {
      final Map<String, dynamic> data = {
        'continent': '',
        'continentCode': '',
        'country': '',
        'countryCode': '',
        'currency': '',
        'eu': true,
        'ip': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeGet();
      expect(response, isA<models.Locale>());
    });

    test('test method localeListCodes()', () async {
      final Map<String, dynamic> data = {
        'localeCodes': [],
        'total': 1,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeListCodes();
      expect(response, isA<models.LocaleCodeList>());
    });

    test('test method localeListContinents()', () async {
      final Map<String, dynamic> data = {
        'continents': [],
        'total': 1,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeListContinents();
      expect(response, isA<models.ContinentList>());
    });

    test('test method localeListCountries()', () async {
      final Map<String, dynamic> data = {
        'countries': [],
        'total': 1,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeListCountries();
      expect(response, isA<models.CountryList>());
    });

    test('test method localeListCountriesEU()', () async {
      final Map<String, dynamic> data = {
        'countries': [],
        'total': 1,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeListCountriesEU();
      expect(response, isA<models.CountryList>());
    });

    test('test method localeListCountriesPhones()', () async {
      final Map<String, dynamic> data = {
        'phones': [],
        'total': 1,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeListCountriesPhones();
      expect(response, isA<models.PhoneList>());
    });

    test('test method localeListCurrencies()', () async {
      final Map<String, dynamic> data = {
        'currencies': [],
        'total': 1,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeListCurrencies();
      expect(response, isA<models.CurrencyList>());
    });

    test('test method localeListLanguages()', () async {
      final Map<String, dynamic> data = {
        'languages': [],
        'total': 1,
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await locale.localeListLanguages();
      expect(response, isA<models.LanguageList>());
    });
  });
}
