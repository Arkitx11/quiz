// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizScreenState {

 String get question; List<String> get options; String get answer; int get highScore; double get quizProgress;
/// Create a copy of QuizScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizScreenStateCopyWith<QuizScreenState> get copyWith => _$QuizScreenStateCopyWithImpl<QuizScreenState>(this as QuizScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizScreenState&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.highScore, highScore) || other.highScore == highScore)&&(identical(other.quizProgress, quizProgress) || other.quizProgress == quizProgress));
}


@override
int get hashCode => Object.hash(runtimeType,question,const DeepCollectionEquality().hash(options),answer,highScore,quizProgress);

@override
String toString() {
  return 'QuizScreenState(question: $question, options: $options, answer: $answer, highScore: $highScore, quizProgress: $quizProgress)';
}


}

/// @nodoc
abstract mixin class $QuizScreenStateCopyWith<$Res>  {
  factory $QuizScreenStateCopyWith(QuizScreenState value, $Res Function(QuizScreenState) _then) = _$QuizScreenStateCopyWithImpl;
@useResult
$Res call({
 String question, List<String> options, String answer, int highScore, double quizProgress
});




}
/// @nodoc
class _$QuizScreenStateCopyWithImpl<$Res>
    implements $QuizScreenStateCopyWith<$Res> {
  _$QuizScreenStateCopyWithImpl(this._self, this._then);

  final QuizScreenState _self;
  final $Res Function(QuizScreenState) _then;

/// Create a copy of QuizScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? options = null,Object? answer = null,Object? highScore = null,Object? quizProgress = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,highScore: null == highScore ? _self.highScore : highScore // ignore: cast_nullable_to_non_nullable
as int,quizProgress: null == quizProgress ? _self.quizProgress : quizProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc


class _QuizScreenState implements QuizScreenState {
  const _QuizScreenState({required this.question, required final  List<String> options, required this.answer, required this.highScore, required this.quizProgress}): _options = options;
  

@override final  String question;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  String answer;
@override final  int highScore;
@override final  double quizProgress;

/// Create a copy of QuizScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizScreenStateCopyWith<_QuizScreenState> get copyWith => __$QuizScreenStateCopyWithImpl<_QuizScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizScreenState&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.highScore, highScore) || other.highScore == highScore)&&(identical(other.quizProgress, quizProgress) || other.quizProgress == quizProgress));
}


@override
int get hashCode => Object.hash(runtimeType,question,const DeepCollectionEquality().hash(_options),answer,highScore,quizProgress);

@override
String toString() {
  return 'QuizScreenState(question: $question, options: $options, answer: $answer, highScore: $highScore, quizProgress: $quizProgress)';
}


}

/// @nodoc
abstract mixin class _$QuizScreenStateCopyWith<$Res> implements $QuizScreenStateCopyWith<$Res> {
  factory _$QuizScreenStateCopyWith(_QuizScreenState value, $Res Function(_QuizScreenState) _then) = __$QuizScreenStateCopyWithImpl;
@override @useResult
$Res call({
 String question, List<String> options, String answer, int highScore, double quizProgress
});




}
/// @nodoc
class __$QuizScreenStateCopyWithImpl<$Res>
    implements _$QuizScreenStateCopyWith<$Res> {
  __$QuizScreenStateCopyWithImpl(this._self, this._then);

  final _QuizScreenState _self;
  final $Res Function(_QuizScreenState) _then;

/// Create a copy of QuizScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? options = null,Object? answer = null,Object? highScore = null,Object? quizProgress = null,}) {
  return _then(_QuizScreenState(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,highScore: null == highScore ? _self.highScore : highScore // ignore: cast_nullable_to_non_nullable
as int,quizProgress: null == quizProgress ? _self.quizProgress : quizProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
