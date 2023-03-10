import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> with HydratedMixin {
  LanguageCubit() : super(const LanguageState(locale: 'en'));

  void setLanguage({required String locale}) =>
      emit(LanguageState(locale: locale));

  @override
  LanguageState fromJson(Map<String, dynamic>? json) {
    return LanguageState.fromJson(json);
  }

  @override
  Map<String, Object> toJson(LanguageState state) {
    return state.toMap();
  }
}
