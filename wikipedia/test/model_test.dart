import 'dart:convert';
import 'package:test/test.dart';
import 'package:wikipedia/wikipedia.dart';

void main() {
  group('Testes de desserialização JSON - Lição 10', () {
    test('Summary.fromJson desserializa corretamente um JSON válido', () {
      const jsonString = '''
      {
        "titles": {
          "canonical": "Dart_(programming_language)",
          "normalized": "Dart (programming language)",
          "display": "Dart (programming language)"
        },
        "pageid": 23683063,
        "extract": "Dart is a programming language designed by Lars Bak and Kasper Lund.",
        "extract_html": "<p>Dart is a programming language.</p>",
        "lang": "en",
        "dir": "ltr",
        "content_urls": {
          "desktop": {
            "page": "https://en.wikipedia.org/wiki/Dart_(programming_language)"
          },
          "mobile": {
            "page": "https://en.m.wikipedia.org/wiki/Dart_(programming_language)"
          }
        }
      }
      ''';

      final jsonMap = jsonDecode(jsonString) as Map<String, Object?>;
      final summary = Summary.fromJson(jsonMap);

      expect(summary, isA<Summary>());
      expect(summary.pageid, equals(23683063));
      expect(summary.titles.canonical, equals('Dart_(programming_language)'));
      expect(summary.titles.normalized, equals('Dart (programming language)'));
      expect(summary.extract, isNotEmpty);
      expect(summary.lang, equals('en'));
      expect(summary.dir, equals('ltr'));
    });

    test('Summary.fromJson lança exceção para JSON incompleto', () {
      const invalidJson = '{"titles": {"canonical": "Dart"}}';
      final jsonMap = jsonDecode(invalidJson) as Map<String, Object?>;

      expect(
        () => Summary.fromJson(jsonMap),
        throwsA(anyOf(isA<FormatException>(), isA<TypeError>())),
      );
    });

    test('Article.listFromJson desserializa corretamente lista de artigos', () {
      const jsonString = '''
      {
        "query": {
          "pages": {
            "23683063": {
              "pageid": 23683063,
              "title": "Dart (programming language)",
              "extract": "Dart is an object-oriented, class-based language."
            }
          }
        }
      }
      ''';

      final jsonMap = jsonDecode(jsonString) as Map<String, Object?>;
      final articles = Article.listFromJson(jsonMap);

      expect(articles, isA<List<Article>>());
      expect(articles, hasLength(1));
      expect(articles.first.title, equals('Dart (programming language)'));
    });

    test('SearchResults.fromJson desserializa corretamente resultados de busca', () {
      const jsonString = '''
      [
        "Dart",
        ["Dart", "Dart (programming language)"],
        ["", ""],
        [
          "https://en.wikipedia.org/wiki/Dart",
          "https://en.wikipedia.org/wiki/Dart_(programming_language)"
        ]
      ]
      ''';

      final jsonList = jsonDecode(jsonString) as List<Object?>;
      final searchResults = SearchResults.fromJson(jsonList);

      expect(searchResults, isA<SearchResults>());
      expect(searchResults.searchTerm, equals('Dart'));
      expect(searchResults.results, hasLength(2));
      expect(searchResults.results.first.title, equals('Dart'));
    });
  });
}
