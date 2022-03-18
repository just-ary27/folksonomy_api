import 'package:folksonomy_api/utils/queryType.dart';

class FolksnomyConfiguration {
  FolksnomyConfiguration._();

  static String uriScheme = 'https';

  static String uriFolksonomyProd = 'api.folksonomy.openfoodfacts.org';

  static String uriFolksonomyTest = 'api.folksonomy.openfoodfacts.org';

  static QueryType globalQueryType = QueryType.PRODUCTION;

  static QueryType getQueryType(QueryType? queryType) =>
      queryType ?? globalQueryType;
}
