part of 'language_cubit.dart';

class LanguageState extends Equatable {
  const LanguageState({required this.locale});

  factory LanguageState.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return const LanguageState(locale: 'en');
    }
    return LanguageState(
      locale: json['locale'] as String,
    );
  }
  final String locale;

  @override
  List<Object> get props => [locale];

  Map<String, Object> toMap() {
    return {
      'locale': locale,
    };
  }
}
