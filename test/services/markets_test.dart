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
  group('Markets test', () {
    late MockClient client;
    late Markets markets;

    setUp(() {
      client = MockClient();
      markets = Markets(client);
    });

    test('test method marketsList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsList();
      expect(response, isA<models.Error>());
    });

    test('test method marketsCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsCreate(
        code: 'northwind',
        name: 'Northwind',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsLocalePolicy()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsLocalePolicy();
      expect(response, isA<models.TenantLocalePolicy>());
    });

    test('test method marketsVocabularies()', () async {
      final Map<String, dynamic> data = {};

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsVocabularies();
      expect(response, isA<models.MarketsVocabularyIndex>());
    });

    test('test method marketsVocabulary()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsVocabulary(
        name: enums.MarketsVocabularyName.marketStatuses,
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsDelete(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsGet(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsUpdate(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsBackfill()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsBackfill(
        id: 'northwind',
        source: 'northwind',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsClone()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsClone(
        id: 'northwind',
        code: 'northwind-b2b',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsContext()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsContext(
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsMakeDefault()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsMakeDefault(
        id: 'northwind',
        data: {},
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsReadiness()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsReadiness(
        id: 'northwind',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsCurrenciesList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsCurrenciesList(
        marketId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsCurrenciesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsCurrenciesCreate(
        marketId: '',
        code: 'EUR',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsCurrenciesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsCurrenciesDelete(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsCurrenciesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsCurrenciesGet(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsCurrenciesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsCurrenciesUpdate(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsLocalesList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsLocalesList(
        marketId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsLocalesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsLocalesCreate(
        marketId: '',
        code: 'de-DE',
        country: 'DE',
        language: 'de',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsLocalesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsLocalesDelete(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsLocalesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsLocalesGet(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsLocalesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsLocalesUpdate(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsTaxClassesList()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsTaxClassesList(
        marketId: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsTaxClassesCreate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.post,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsTaxClassesCreate(
        marketId: '',
        code: 'standard',
        name: 'Standard rate',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsTaxClassesDelete()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.delete,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsTaxClassesDelete(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsTaxClassesGet()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.get,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsTaxClassesGet(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });

    test('test method marketsTaxClassesUpdate()', () async {
      final Map<String, dynamic> data = {
        'error': '',
      };

      when(client.call(
        HttpMethod.put,
      )).thenAnswer((_) async => Response(data: data));

      final response = await markets.marketsTaxClassesUpdate(
        marketId: '',
        id: '',
      );
      expect(response, isA<models.Error>());
    });
  });
}
