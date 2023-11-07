import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@Riverpod(keepAlive: true)
class LoginController extends _$LoginController {
  static const List<String> scopes = [
    "https://www.googleapis.com/auth/userinfo.email",
    "https://www.googleapis.com/auth/userinfo.profile",
  ];
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: scopes);

  @override
  Future<GoogleSignInAccount?> build() async {
    if (_googleSignIn.currentUser != null) {
      return _googleSignIn.currentUser;
    }
    return await _googleSignIn.signInSilently();
  }

  Future<void> signIn() async {
    state = AsyncData(await _googleSignIn.signInSilently() ?? await _googleSignIn.signIn());
  }

  Future<void> signOut() async {
    state = AsyncData(await _googleSignIn.disconnect());
  }
}
