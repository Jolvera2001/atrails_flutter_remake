import 'package:atrails/Pages/start_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
Future<LoginForm> loginForm(LoginFormRef ref) async {
  LoginForm form = LoginForm(
    username: "Hello World",
    password: "12345",
    );

  return form;
}