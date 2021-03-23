enum EmailSignInFormType { signIn, register }

class EmailSignInModel {
  EmailSignInModel(
      {this.email,
      this.password,
      this.formType,
      this.isLoading,
      this.isSubmitted});
  final String email;
  final String password;
  final EmailSignInFormType formType;
  final bool isLoading;
  final bool isSubmitted;

  EmailSignInModel copyWith({
    final String email,
    final String password,
    final EmailSignInFormType formType,
    final bool isLoading,
    final bool isSubmitted,
  }) {
    return EmailSignInModel(
      email: email ?? this.email,
      password: password ?? this.password,
      formType: formType ?? this.formType,
      isLoading: isLoading ?? this.isLoading,
      isSubmitted: isSubmitted ?? this.isSubmitted,
    );
  }
}
