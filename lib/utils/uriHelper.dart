import 'package:folksonomy_api/utils/folksonomyConfigurations.dart';

import 'queryType.dart';

class UriHelper {
  UriHelper._();

  static Uri getUri({
    required final String path,
    final QueryType? queryType,
    Map<String, dynamic>? queryParameters,
  }) =>
      Uri(
        scheme: FolksnomyConfiguration.uriScheme,
        host: (FolksnomyConfiguration.getQueryType(queryType) ==
                QueryType.PRODUCTION)
            ? FolksnomyConfiguration.uriFolksonomyProd
            : FolksnomyConfiguration.uriFolksonomyTest,
        path: path,
        queryParameters: queryParameters,
      );
}
