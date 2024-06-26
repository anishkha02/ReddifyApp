import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddify_app/core/utils.dart';
import 'package:reddify_app/features/auth/repository/auth_repo.dart';
final authControllerProvider=Provider(
  (ref)=>AuthController(
    authRepository: ref.read(authRepositoryProvider),
  ),
);

class AuthController{
  final AuthRepository _authRepository;
  AuthController({required AuthRepository authRepository}):_authRepository=authRepository;
  
  void signInWithGoogle(BuildContext context)async{
    final user =await _authRepository.signInWithGoogle();
    user.fold((l) => showSnackBar(context,l.message), (r) => null);

  } 
}