import 'package:riverpod_generator/builder.dart';
import 'package:atrails/Pages/start_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'start_page_providers.g.dart';

@riverpod
Future<LoginForm> loginForm(LoginFormRef ref) async {
  LoginForm form = const LoginForm(
    username: "something",
    password: "12345"
  );

  return form;
}