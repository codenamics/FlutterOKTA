import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthOktaService {
  static String id;
  static String token;
  FlutterAppAuth appAuth = FlutterAppAuth();

  Future authorize() async {
    try {
      final AuthorizationTokenResponse result =
          await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          '0oatz05f3FLPpnzpR4x5',
          'com.okta.dev-397992:/callback',
          discoveryUrl:
              'https://dev-397992.okta.com/.well-known/openid-configuration',
          scopes: ['openid', 'profile', 'email', 'offline_access'],
        ),
      );
      // final AuthorizationTokenResponse result =
      //     await appAuth.authorizeAndExchangeCode(
      //   AuthorizationTokenRequest(
      //       '0oatz05f3FLPpnzpR4x5', 'com.okta.dev-397992:/callback',
      //       serviceConfiguration: AuthorizationServiceConfiguration(
      //           'https://dev-397992.okta.com/oauth2/v1/authorize',
      //           'https://dev-397992.okta.com/oauth2/v1/token'),
      //       scopes: ['openid', 'profile', 'email', 'offline_access']),
      // );

      id = result.idToken;
      token = result.accessToken;
   
      return result.accessToken;
    } catch (e) {
      print(e);
    }
  }

  Future logout(id) async {
    try {
      final AuthorizationTokenResponse result =
          await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          '0oatz05f3FLPpnzpR4x5',
          'com.okta.dev-397992:/',
          scopes: ['openid', 'profile', 'email', 'offline_access'],
          additionalParameters: {
            "id_token_hint": id,
          },
          serviceConfiguration: AuthorizationServiceConfiguration(
              "https://dev-397992.okta.com/oauth2/v1/logout",
              "https://dev-397992.okta.com/oauth2/v1/token"),
        ),
      );

      return result.accessToken;
    } catch (e) {
      print(e);

    }
  }
}
