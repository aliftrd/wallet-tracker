// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginFormEvent()';
}


}

/// @nodoc
class $LoginFormEventCopyWith<$Res>  {
$LoginFormEventCopyWith(LoginFormEvent _, $Res Function(LoginFormEvent) __);
}


/// Adds pattern-matching-related methods to [LoginFormEvent].
extension LoginFormEventPatterns on LoginFormEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EmailChangedEvent value)?  emailChanged,TResult Function( _PasswordChangedEvent value)?  passwordChanged,TResult Function( _PasswordVisibilityChangedEvent value)?  passwordVisibilityChanged,TResult Function( _LoginEvent value)?  login,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailChangedEvent() when emailChanged != null:
return emailChanged(_that);case _PasswordChangedEvent() when passwordChanged != null:
return passwordChanged(_that);case _PasswordVisibilityChangedEvent() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that);case _LoginEvent() when login != null:
return login(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EmailChangedEvent value)  emailChanged,required TResult Function( _PasswordChangedEvent value)  passwordChanged,required TResult Function( _PasswordVisibilityChangedEvent value)  passwordVisibilityChanged,required TResult Function( _LoginEvent value)  login,}){
final _that = this;
switch (_that) {
case _EmailChangedEvent():
return emailChanged(_that);case _PasswordChangedEvent():
return passwordChanged(_that);case _PasswordVisibilityChangedEvent():
return passwordVisibilityChanged(_that);case _LoginEvent():
return login(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EmailChangedEvent value)?  emailChanged,TResult? Function( _PasswordChangedEvent value)?  passwordChanged,TResult? Function( _PasswordVisibilityChangedEvent value)?  passwordVisibilityChanged,TResult? Function( _LoginEvent value)?  login,}){
final _that = this;
switch (_that) {
case _EmailChangedEvent() when emailChanged != null:
return emailChanged(_that);case _PasswordChangedEvent() when passwordChanged != null:
return passwordChanged(_that);case _PasswordVisibilityChangedEvent() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that);case _LoginEvent() when login != null:
return login(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailChanged,TResult Function( String password)?  passwordChanged,TResult Function( bool isVisible)?  passwordVisibilityChanged,TResult Function()?  login,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailChangedEvent() when emailChanged != null:
return emailChanged(_that.email);case _PasswordChangedEvent() when passwordChanged != null:
return passwordChanged(_that.password);case _PasswordVisibilityChangedEvent() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that.isVisible);case _LoginEvent() when login != null:
return login();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailChanged,required TResult Function( String password)  passwordChanged,required TResult Function( bool isVisible)  passwordVisibilityChanged,required TResult Function()  login,}) {final _that = this;
switch (_that) {
case _EmailChangedEvent():
return emailChanged(_that.email);case _PasswordChangedEvent():
return passwordChanged(_that.password);case _PasswordVisibilityChangedEvent():
return passwordVisibilityChanged(_that.isVisible);case _LoginEvent():
return login();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  passwordChanged,TResult? Function( bool isVisible)?  passwordVisibilityChanged,TResult? Function()?  login,}) {final _that = this;
switch (_that) {
case _EmailChangedEvent() when emailChanged != null:
return emailChanged(_that.email);case _PasswordChangedEvent() when passwordChanged != null:
return passwordChanged(_that.password);case _PasswordVisibilityChangedEvent() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that.isVisible);case _LoginEvent() when login != null:
return login();case _:
  return null;

}
}

}

/// @nodoc


class _EmailChangedEvent implements LoginFormEvent {
  const _EmailChangedEvent(this.email);
  

 final  String email;

/// Create a copy of LoginFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailChangedEventCopyWith<_EmailChangedEvent> get copyWith => __$EmailChangedEventCopyWithImpl<_EmailChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailChangedEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'LoginFormEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EmailChangedEventCopyWith<$Res> implements $LoginFormEventCopyWith<$Res> {
  factory _$EmailChangedEventCopyWith(_EmailChangedEvent value, $Res Function(_EmailChangedEvent) _then) = __$EmailChangedEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EmailChangedEventCopyWithImpl<$Res>
    implements _$EmailChangedEventCopyWith<$Res> {
  __$EmailChangedEventCopyWithImpl(this._self, this._then);

  final _EmailChangedEvent _self;
  final $Res Function(_EmailChangedEvent) _then;

/// Create a copy of LoginFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EmailChangedEvent(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordChangedEvent implements LoginFormEvent {
  const _PasswordChangedEvent(this.password);
  

 final  String password;

/// Create a copy of LoginFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordChangedEventCopyWith<_PasswordChangedEvent> get copyWith => __$PasswordChangedEventCopyWithImpl<_PasswordChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordChangedEvent&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'LoginFormEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordChangedEventCopyWith<$Res> implements $LoginFormEventCopyWith<$Res> {
  factory _$PasswordChangedEventCopyWith(_PasswordChangedEvent value, $Res Function(_PasswordChangedEvent) _then) = __$PasswordChangedEventCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$PasswordChangedEventCopyWithImpl<$Res>
    implements _$PasswordChangedEventCopyWith<$Res> {
  __$PasswordChangedEventCopyWithImpl(this._self, this._then);

  final _PasswordChangedEvent _self;
  final $Res Function(_PasswordChangedEvent) _then;

/// Create a copy of LoginFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_PasswordChangedEvent(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordVisibilityChangedEvent implements LoginFormEvent {
  const _PasswordVisibilityChangedEvent(this.isVisible);
  

 final  bool isVisible;

/// Create a copy of LoginFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordVisibilityChangedEventCopyWith<_PasswordVisibilityChangedEvent> get copyWith => __$PasswordVisibilityChangedEventCopyWithImpl<_PasswordVisibilityChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordVisibilityChangedEvent&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,isVisible);

@override
String toString() {
  return 'LoginFormEvent.passwordVisibilityChanged(isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$PasswordVisibilityChangedEventCopyWith<$Res> implements $LoginFormEventCopyWith<$Res> {
  factory _$PasswordVisibilityChangedEventCopyWith(_PasswordVisibilityChangedEvent value, $Res Function(_PasswordVisibilityChangedEvent) _then) = __$PasswordVisibilityChangedEventCopyWithImpl;
@useResult
$Res call({
 bool isVisible
});




}
/// @nodoc
class __$PasswordVisibilityChangedEventCopyWithImpl<$Res>
    implements _$PasswordVisibilityChangedEventCopyWith<$Res> {
  __$PasswordVisibilityChangedEventCopyWithImpl(this._self, this._then);

  final _PasswordVisibilityChangedEvent _self;
  final $Res Function(_PasswordVisibilityChangedEvent) _then;

/// Create a copy of LoginFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isVisible = null,}) {
  return _then(_PasswordVisibilityChangedEvent(
null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _LoginEvent implements LoginFormEvent {
  const _LoginEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginFormEvent.login()';
}


}




/// @nodoc
mixin _$LoginFormState {

 SubmissionStatus get status; LoginFormData get form; bool get isPasswordVisible; String? get message; Map<String, dynamic>? get errors;
/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFormStateCopyWith<LoginFormState> get copyWith => _$LoginFormStateCopyWithImpl<LoginFormState>(this as LoginFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFormState&&(identical(other.status, status) || other.status == status)&&(identical(other.form, form) || other.form == form)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.errors, errors));
}


@override
int get hashCode => Object.hash(runtimeType,status,form,isPasswordVisible,message,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'LoginFormState(status: $status, form: $form, isPasswordVisible: $isPasswordVisible, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $LoginFormStateCopyWith<$Res>  {
  factory $LoginFormStateCopyWith(LoginFormState value, $Res Function(LoginFormState) _then) = _$LoginFormStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, LoginFormData form, bool isPasswordVisible, String? message, Map<String, dynamic>? errors
});


$LoginFormDataCopyWith<$Res> get form;

}
/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._self, this._then);

  final LoginFormState _self;
  final $Res Function(LoginFormState) _then;

/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? form = null,Object? isPasswordVisible = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormData,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormDataCopyWith<$Res> get form {
  
  return $LoginFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginFormState].
extension LoginFormStatePatterns on LoginFormState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginFormState value)  $default,){
final _that = this;
switch (_that) {
case _LoginFormState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginFormState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  LoginFormData form,  bool isPasswordVisible,  String? message,  Map<String, dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
return $default(_that.status,_that.form,_that.isPasswordVisible,_that.message,_that.errors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  LoginFormData form,  bool isPasswordVisible,  String? message,  Map<String, dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _LoginFormState():
return $default(_that.status,_that.form,_that.isPasswordVisible,_that.message,_that.errors);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  LoginFormData form,  bool isPasswordVisible,  String? message,  Map<String, dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
return $default(_that.status,_that.form,_that.isPasswordVisible,_that.message,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _LoginFormState extends LoginFormState {
  const _LoginFormState({this.status = SubmissionStatus.initial, this.form = const LoginFormData(), this.isPasswordVisible = false, this.message, final  Map<String, dynamic>? errors}): _errors = errors,super._();
  

@override@JsonKey() final  SubmissionStatus status;
@override@JsonKey() final  LoginFormData form;
@override@JsonKey() final  bool isPasswordVisible;
@override final  String? message;
 final  Map<String, dynamic>? _errors;
@override Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFormStateCopyWith<_LoginFormState> get copyWith => __$LoginFormStateCopyWithImpl<_LoginFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFormState&&(identical(other.status, status) || other.status == status)&&(identical(other.form, form) || other.form == form)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,status,form,isPasswordVisible,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'LoginFormState(status: $status, form: $form, isPasswordVisible: $isPasswordVisible, message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$LoginFormStateCopyWith<$Res> implements $LoginFormStateCopyWith<$Res> {
  factory _$LoginFormStateCopyWith(_LoginFormState value, $Res Function(_LoginFormState) _then) = __$LoginFormStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, LoginFormData form, bool isPasswordVisible, String? message, Map<String, dynamic>? errors
});


@override $LoginFormDataCopyWith<$Res> get form;

}
/// @nodoc
class __$LoginFormStateCopyWithImpl<$Res>
    implements _$LoginFormStateCopyWith<$Res> {
  __$LoginFormStateCopyWithImpl(this._self, this._then);

  final _LoginFormState _self;
  final $Res Function(_LoginFormState) _then;

/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? form = null,Object? isPasswordVisible = null,Object? message = freezed,Object? errors = freezed,}) {
  return _then(_LoginFormState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormData,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormDataCopyWith<$Res> get form {
  
  return $LoginFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc
mixin _$LoginFormData {

 String get email; String get password;
/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFormDataCopyWith<LoginFormData> get copyWith => _$LoginFormDataCopyWithImpl<LoginFormData>(this as LoginFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFormData&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginFormData(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginFormDataCopyWith<$Res>  {
  factory $LoginFormDataCopyWith(LoginFormData value, $Res Function(LoginFormData) _then) = _$LoginFormDataCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LoginFormDataCopyWithImpl<$Res>
    implements $LoginFormDataCopyWith<$Res> {
  _$LoginFormDataCopyWithImpl(this._self, this._then);

  final LoginFormData _self;
  final $Res Function(LoginFormData) _then;

/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginFormData].
extension LoginFormDataPatterns on LoginFormData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginFormData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginFormData value)  $default,){
final _that = this;
switch (_that) {
case _LoginFormData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginFormData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
return $default(_that.email,_that.password);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginFormData():
return $default(_that.email,_that.password);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
return $default(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _LoginFormData extends LoginFormData {
  const _LoginFormData({this.email = '', this.password = ''}): super._();
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String password;

/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFormDataCopyWith<_LoginFormData> get copyWith => __$LoginFormDataCopyWithImpl<_LoginFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFormData&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginFormData(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginFormDataCopyWith<$Res> implements $LoginFormDataCopyWith<$Res> {
  factory _$LoginFormDataCopyWith(_LoginFormData value, $Res Function(_LoginFormData) _then) = __$LoginFormDataCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginFormDataCopyWithImpl<$Res>
    implements _$LoginFormDataCopyWith<$Res> {
  __$LoginFormDataCopyWithImpl(this._self, this._then);

  final _LoginFormData _self;
  final $Res Function(_LoginFormData) _then;

/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginFormData(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
